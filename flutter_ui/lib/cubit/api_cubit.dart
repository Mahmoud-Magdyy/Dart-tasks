

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'api_state.dart';

class ApiCubit extends Cubit<ApiState> {
  ApiCubit() : super(ApiInitial());
  
  void getAlbumData()async{
  final response=  await  Dio().get('https://jsonplaceholder.typicode.com/albums');
  print(response.data);


  }
}
