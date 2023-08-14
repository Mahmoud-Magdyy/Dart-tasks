import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/cubit/sql_cubit.dart';
import 'package:flutter_ui/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => SqlCubit()..createDatabase(),
      child:   MaterialApp(
        theme: ThemeData(fontFamily: 'fonts'),
        debugShowCheckedModeBanner: false,
        home: const SafeArea(child: Cubb()) ),
      );
    
  }
}
