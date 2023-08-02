import 'package:flutter/material.dart';
import 'package:flutter_ui/task12/task12.dart';

void main(){
runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SafeArea(child: Counter()),
    );
  }
}