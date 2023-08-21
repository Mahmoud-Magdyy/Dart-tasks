import 'package:api/api_part_two/presentation/cubit/chef_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../api_part_two/presentation/screens/api_session_two.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => ChefCubit()..chefDelete(),
      child: const MaterialApp(
        home: ApiSessionPart2(),
      ),
    );
  }
}
// signIn
// sendCode
// chefChangePassword
// chefForgetPassword
// chefDelete