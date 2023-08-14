import 'package:coffe_shop/features/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

import '../../core/database/cach/chach_helper.dart';
import '../../core/service/service_locator.dart';
import 'home_page.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    
    super.initState();
    navigate();
  }

void navigate() {
  bool isVisited= serviceLocatir<CacheHelper>().getData(key: 'welcome')??false;
  Future.delayed(const Duration(seconds: 3),(){       //isVisited? const HomeScreen():OnBoaringScreen())
      Navigator.push(context, MaterialPageRoute(builder: (_)=>isVisited? const HomePage():const WelcomeScreen()));
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.black,
      body:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                
                margin: const EdgeInsets.only(right: 30,bottom: 20),
                child: Image.asset('assets/images/coffe_logo.png' ,width: 600,height: 600,)),
               
            ],
          ),
        ),  
    );
  }
}