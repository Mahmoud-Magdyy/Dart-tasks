import 'package:flutter/material.dart';
import 'package:team_task/features/screens/forget_password.dart';

import '../theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
        
        debugShowCheckedModeBanner: false,
        theme: getAppTheme(),
        home: const ForgetPassword()
    );
  }
}