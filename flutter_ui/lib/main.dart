import 'package:flutter/material.dart';
import 'package:flutter_ui/task9/whatsApp.dart';
import 'package:flutter_ui/test.dart';

void main(){
runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SafeArea(child: Cubb()),
    );
  }
}