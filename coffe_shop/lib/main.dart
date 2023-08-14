

import 'package:flutter/material.dart';

import 'app/app.dart';
import 'core/database/cach/chach_helper.dart';
import 'core/service/service_locator.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  await serviceLocatir<CacheHelper>().init();
runApp(const MyApp());
}
