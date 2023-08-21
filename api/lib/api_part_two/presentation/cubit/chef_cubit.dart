import 'package:api/api_part_two/data/end_points.dart';
import 'package:api/api_part_two/data/model/login_model.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import 'chef_state.dart';

class ChefCubit extends Cubit<ChefState> {
  ChefCubit() : super(ChefInitial());

  //sign in
  void signIn() async {
    await Dio().post(EndPoints.baseUrl + EndPoints.chefSignIn, data: {
      "email": "mahmoudmagdy20002@gmail.com",
      "password": "anas123",
    }).then((value) {
      var modell = LoginInModel.fromJson(value.data);
      print(modell.message);
    }).catchError((e) {
      print(e.toString());
    });
  }

  //send code
  void sendCode() async {
    await Dio().post(EndPoints.baseUrl + EndPoints.chefSendCode,
        data: {"email": "mahmoudmagdy20002@gmail.com"}).then((value) {
      print(value);
    }).catchError((e) {
      print(e.toString());
    });
  }

  //change password
  void chefChangePassword() {
    Dio(
      BaseOptions(
        headers: {
          'token':
              'FOODAPI eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY0ZTMwZDQyMzFmNTU2ODYwNjhlMjBmNyIsImVtYWlsIjoibWFobW91ZG1hZ2R5MjAwMDJAZ21haWwuY29tIiwibmFtZSI6Ik1haG1vdWQiLCJpYXQiOjE2OTI2MDE2OTN9.KvviORQzn9HEhPQBoPIHH-stSo0KcSXP0Lw4RMR3UZM',
        },
      ),
    )
        .patch(EndPoints.baseUrl + EndPoints.chefChangePassword, data: {
          "oldPass": "anas123",
          "newPass": "anas1234",
          "confirmPassword": "anas1234"
        })
        .then((value) => print(value.data))
        .catchError((e) {
          print(e);
        });
  }

  //forget password
  void chefForgetPassword() async {
    await Dio()
        .patch(EndPoints.baseUrl + EndPoints.chefForgetPassword, data: {
          "email": "mahmoudmagdy20002@gmail.com",
          "password": "anas1234",
          "confirmPassword": "anas1234",
          "code": "657516"
        })
        .then((value) => print(value))
        .catchError((e) {
          print(e);
        });
  }

//get data
  void getChefData() async {
    String token =
        'FOODAPI eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY0ZTMwZDQyMzFmNTU2ODYwNjhlMjBmNyIsImVtYWlsIjoibWFobW91ZG1hZ2R5MjAwMDJAZ21haWwuY29tIiwibmFtZSI6Ik1haG1vdWQiLCJpYXQiOjE2OTI2MDE2OTN9.KvviORQzn9HEhPQBoPIHH-stSo0KcSXP0Lw4RMR3UZM';
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    var id = decodedToken['id'];
    await Dio(
      BaseOptions(
        headers: {'token': token},
      ),
    )
        .get(
          EndPoints.baseUrl + EndPoints.getChefDataEndPoints(id),
        )
        .then((value) => print(value))
        .catchError((e) {
      print(e.message);
    });
  }

//delete
  void chefDelete() async {
    String token =
        'FOODAPI eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY0ZTMwZDQyMzFmNTU2ODYwNjhlMjBmNyIsImVtYWlsIjoibWFobW91ZG1hZ2R5MjAwMDJAZ21haWwuY29tIiwibmFtZSI6Ik1haG1vdWQiLCJpYXQiOjE2OTI2MDE2OTN9.KvviORQzn9HEhPQBoPIHH-stSo0KcSXP0Lw4RMR3UZM';
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    var id = decodedToken['id'];
    await Dio(BaseOptions(headers: {'token': token}))
        .delete(
          EndPoints.baseUrl + EndPoints.chefDelete,
          queryParameters: {'id': id},
        )
        .then((value) => print(value))
        .catchError((e) {
          print(e);
        });
  }
}
