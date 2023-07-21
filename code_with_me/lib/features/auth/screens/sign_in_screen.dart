import 'dart:ffi';
import 'package:code_with_me/core/utils/app_color.dart';
import 'package:code_with_me/core/utils/app_images.dart';
import 'package:code_with_me/core/utils/app_strings.dart';
import 'package:code_with_me/core/utils/commons.dart';
import 'package:code_with_me/features/auth/screens/home_screen.dart';
import 'package:code_with_me/features/auth/screens/whatssApp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';





class signIn extends StatelessWidget {
  const signIn({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SizedBox(
                height: 48,
              ),
              //images
              SizedBox(
                width: 300,
                height: 300,
                child: Image.asset(AppImages.imgPathSignIn),
              ),
              //tab bar
              Container(
                height: 35,
                width: 400,
                decoration: BoxDecoration(
                  // color: Colors.black,

                  borderRadius: BorderRadius.circular(5),
                ),
                child: const TabBar(
                  indicatorWeight: 5,
                
                  labelColor: AppColor.primaryColor,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: AppColor.primaryColor,
                  tabs: [
                    Tab(
                      text: 'Sign in',
                    ),
                    Tab(
                      text: 'Sign up',
                    )
                  ],
                ),
              ),

              Expanded(
                
                  child: TabBarView(children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                          ),
                            prefixIcon: Icon(Icons.email,color: Colors.grey,), hintText: 'Email'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextField(
                        
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                          ),
                          prefixIcon: Icon(Icons.lock,color: Colors.grey,),
                          suffixIcon: Icon(Icons.visibility_off,color:Colors.grey,),
                          hintText: 'password',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              pushMethod(context,WhatssApp() );
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: AppColor.primaryColor,
                            ),
                            child: Text('sign in')),
                      )
                    ],
                  ),
                ),
                 const Column(children: [
                  SizedBox(height: 10,),
                   TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                          ),
                          prefixIcon: Icon(Icons.person,color: AppColor.field,),
                          
                          hintText: 'Name',
                        ),
                      ),
                      SizedBox(height: 6,),
                   TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                          ),
                          prefixIcon: Icon(Icons.phone,color: AppColor.field),
                        
                          hintText: 'Phone Number',
                        ),
                      ),
                      SizedBox(height: 6,),
                   TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                          ),
                          prefixIcon: Icon(Icons.email,color: AppColor.field,),
                          
                          hintText: 'Email',
                        ),
                      ),
                      SizedBox(height: 6,),
                   TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                          ),
                          prefixIcon: Icon(Icons.lock,color: AppColor.field),
                          suffixIcon: Icon(Icons.visibility_off,color: AppColor.field),
                          hintText: 'password',
                        ),
                      ),
                      SizedBox(height: 6,),
                   TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                          ),
                          suffixIcon: Icon(Icons.menu,color: AppColor.field),
                          hintText: 'Department',
                        ),
                      ),
                ],)
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
