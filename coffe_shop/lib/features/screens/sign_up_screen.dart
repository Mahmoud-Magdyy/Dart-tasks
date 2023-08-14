import 'package:coffe_shop/features/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_color.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 400,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/back.jpg"),
                        fit: BoxFit.cover,
                        alignment: Alignment.centerLeft
                        ),
                        ),
              ),
                    const SizedBox(height: 20,),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          
                          TextFormField(
                              style: const TextStyle(color: Colors.white),
                              
                              decoration: InputDecoration(
                                
                                prefixIconColor: AppColor.buttonColor,
                                
                                hintText: 'Enter  Email',
                                hintStyle: const TextStyle(color: Colors.white),
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColor.buttonColor),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.buttonColor.withOpacity(0.8)),
                                ),
                              ),
                              
                            ),
                            const SizedBox(height: 20,),
                          TextFormField(
                              style: const TextStyle(color: Colors.white),
                              
                              decoration: InputDecoration(
                                
                                prefixIconColor: AppColor.buttonColor,
                                
                                hintText: 'Enter  Password',
                                hintStyle: const TextStyle(color: Colors.white),
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColor.buttonColor),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.buttonColor.withOpacity(0.8)),
                                ),
                              ),
                              
                            ),
                            const SizedBox(height: 20,),
                          TextFormField(
                              style: const TextStyle(color: Colors.white),
                              
                              decoration: InputDecoration(
                                
                                prefixIconColor: AppColor.buttonColor,
                                
                                hintText: 'confim Password',
                                hintStyle: const TextStyle(color: Colors.white),
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColor.buttonColor),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColor.buttonColor.withOpacity(0.8)),
                                ),
                              ),
                              
                            ),
                             const SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: ElevatedButton(
                                style: const ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        AppColor.buttonColor)),
                                onPressed: () {
                                   {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginScreen()));
                                  }
                                },
                                child: const Text('Sign up')),
                          )
                        ],
                      ),
                    )
                    
            ],
          ),
        ),
      ),
    );
  }
}