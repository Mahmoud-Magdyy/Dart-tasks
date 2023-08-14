import 'package:flutter/material.dart';

import '../features/screens/splash_screen.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: 
     SplashScreen()
      ),
    );
  }
}