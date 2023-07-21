import 'package:code_with_me/features/auth/screens/on_boarding_screen1.dart';
import 'package:code_with_me/features/auth/screens/on_boarding_screen2.dart';
import 'package:code_with_me/features/auth/screens/on_boarding_screen3.dart';
import 'package:flutter/material.dart';

import '../features/auth/screens/sign_in_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreenOne(),
    );
  }
}