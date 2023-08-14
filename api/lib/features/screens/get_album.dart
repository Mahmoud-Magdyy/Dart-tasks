import 'package:api/cubit/api_cubit.dart';
import 'package:api/cubit/api_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetAlbumm extends StatelessWidget {
  const GetAlbumm({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<ApiCubit, ApiState>(
      builder: (context, state) {
        return  Scaffold(
          body:state is GetAlbumLoadingState?const Center(child: CircularProgressIndicator(),): ListView.builder(itemBuilder:(context,i){
            return ListTile(
              title: Text(BlocProvider.of<ApiCubit>(context).albums[i].userId.toString(),),
                  subtitle:Text(BlocProvider.of<ApiCubit>(context).albums[i].id.toString(),) ,
                  leading: Text(BlocProvider.of<ApiCubit>(context).albums[i].title,),
                  
            );
          } ),
        );
      },
    );
  }
}
