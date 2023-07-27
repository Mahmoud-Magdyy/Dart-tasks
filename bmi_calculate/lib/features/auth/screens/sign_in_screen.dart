
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}



class _SignInState extends State<SignIn> {

 @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign in'),),


      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          TextFormField(
            decoration:const InputDecoration(hintText: 'Enter Email',
            border: OutlineInputBorder()
            ),

          ),
          const SizedBox(height: 20,),
          TextFormField(
            decoration:const InputDecoration(hintText: 'Enter Password',
            border: OutlineInputBorder()
            ),

          ),

          ElevatedButton(onPressed: ()async{
            var sp=await SharedPreferences.getInstance();
            await sp.setString('saved', 'true');
          }, child: const Text('sign in'))
        ],),
      ),
    );
  }
}