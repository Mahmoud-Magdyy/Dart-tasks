import 'package:flutter/material.dart';

import '../../../core/utils/app_strings.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text(AppStrings.homePage),)
                        ,);
  }
}