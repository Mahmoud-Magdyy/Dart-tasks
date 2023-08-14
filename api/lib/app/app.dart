import 'package:api/cubit/api_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/screens/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => ApiCubit()..getAlbumsData(),
      child: const MaterialApp(
        home: GetAlbumm(),
      ),
    );
  }
}
