import 'package:flutter/material.dart';

import '../test.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(fontFamily: 'Borel'),
      home: Testing(),
    );
  }
}
