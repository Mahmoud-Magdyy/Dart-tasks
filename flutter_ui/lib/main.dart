import 'package:flutter/material.dart';
import 'package:flutter_ui/dod.dart';
import 'package:flutter_ui/task6/task.dart';
import 'package:flutter_ui/task7/task1.dart';
import 'package:flutter_ui/task8/task.dart';
import 'package:flutter_ui/task9/whatsApp.dart';

void main(){
runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SafeArea(child: WhastApp()),
    );
  }
}