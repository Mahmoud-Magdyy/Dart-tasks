import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/cubit/sql_cubit.dart';
import 'package:flutter_ui/task6/task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => SqlCubit()..createDatabase(),
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(child: BusinessCard('Mahmoudmagdy20002@gmail.com', 'Password', '01112128654') ),
      ),
    );
  }
}
