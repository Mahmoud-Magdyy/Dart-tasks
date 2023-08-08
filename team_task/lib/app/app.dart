import 'package:flutter/material.dart';

import '../features/screens/reset_password.dart';
import '../theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
        
        debugShowCheckedModeBanner: false,
        theme: getAppTheme(),
        home: const ResetPassword()
    );
  }
}