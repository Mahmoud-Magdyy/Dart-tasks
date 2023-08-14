import 'package:api/model/album_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/post_model.dart';
import 'api_state.dart';

class ApiCubit extends Cubit<ApiState> {
  ApiCubit() : super(ApiInitial());
  List<AlbumModel> albums = [];
  List<PostModel> posts = [];

  getAlbumsData() async {
    emit(GetAlbumLoadingState());
    var data = [];

    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/albums').then(
      (value) {
        data = value.data;
        albums = data.map((e) => AlbumModel.fromJson(e)).toList();
        // print(albums[0].id);
        emit(GetAlbumSuccessState());
      },
    ).catchError(
      (e) {
        print(e.toString());
        emit(GetAlbumErrorState());
      },
    );
  }

  getPostsData() async {
    emit(GetPostsLoadingState());
    var postData = [];
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts').then(
      (value) {
        postData = value.data;
        posts = postData.map((e) => PostModel.fromJson(e)).toList();
        emit(GetPostsSuccessState());
      },
      
    ).catchError(
      (e) {
        emit(GetPostsErrorState());
        print(e.toString());
        
      },
    );
  }
}
