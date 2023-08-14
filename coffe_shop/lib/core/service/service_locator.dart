import 'package:get_it/get_it.dart';

import '../database/cach/chach_helper.dart';



final serviceLocatir=GetIt.instance;

Future<void> setup() async{
   serviceLocatir.registerLazySingleton<CacheHelper>(()=>CacheHelper());
  
}