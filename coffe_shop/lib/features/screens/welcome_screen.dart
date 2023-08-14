import 'package:coffe_shop/core/utils/app_color.dart';
import 'package:coffe_shop/features/screens/home_page.dart';
import 'package:coffe_shop/features/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/database/cach/chach_helper.dart';
import '../../core/service/service_locator.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       Material(
         child: Container(
          padding: const EdgeInsets.only(top: 100,bottom: 40),
          decoration:const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(image: AssetImage('assets/images/bg.png'),
            
            fit: BoxFit.cover,
            opacity: 0.6
            )
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
           
            Text("Coffe Shops",
              style: GoogleFonts.pacifico(
                fontSize: 50,
                color: Colors.white
              )
           
            ),

            Column(children: [
              Text("Feeling Low? Take a Cup Of Coffee",
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize:18,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              )
           
            ),
            const SizedBox(height: 80,),
            InkWell(
              onTap: ()async{
                 await serviceLocatir<CacheHelper>()
                                          .saveData(
                                              key: 'welcome',
                                              value: true)
                                          .then((value) => {
                                                print('is vailable'),
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (_) =>
                                                             const LoginScreen()))
                                              });
              },
              child: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration:  BoxDecoration(color: AppColor.buttonColor,
                borderRadius: BorderRadius.circular(10),
                ),
                child:  const Text('Get Started',style:
                  TextStyle(color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                  
                  )
                ),
                
            ))
            
            ],)


          ],),
             ),
       )
    
      
    
    ;
  }
}