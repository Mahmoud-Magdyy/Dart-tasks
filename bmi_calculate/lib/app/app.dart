import 'package:bmi_calculate/features/auth/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/auth/screens/calculate_screen.dart';


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late SharedPreferences sp;
   String islogin ='false';
  @override
  void initState() {
   
    super.initState();
    sh();
  }

  void sh()async{
     sp = await SharedPreferences.getInstance();
    islogin=sp.getString('saved')??'false';
    
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
   

    return   MaterialApp(


      debugShowCheckedModeBanner: false,
      home: SafeArea(child:
      
      islogin=='true'?
        CalculateScreen():const SignIn()),
    );
  }
}