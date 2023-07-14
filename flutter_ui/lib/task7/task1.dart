import 'package:flutter/material.dart';
import 'package:flutter_ui/onc.dart';

import '../task6/task.dart';

// void main() {
//   runApp(InteractiveWidgets());
// }

// ignore: must_be_immutable
class InteractiveWidgets extends StatelessWidget {
  InteractiveWidgets({super.key});
  // TextEditingController emailController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: const Text('Up Academy'),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                // controller: emailController,
                decoration: const InputDecoration(
                    hintText: 'Email', border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: true,
                // controller: passwordController,
                decoration: const InputDecoration(
                    hintText: 'Password', border: OutlineInputBorder()),
              ),
              OutlinedButton(
                onPressed: () {
                  
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    
                   
                    // if(emailController.text=='flutter@gmail.com'&&passwordController.text=='upacademy'){
                    //   return BusinessCard();
                    // }
                    
                      return Center(child: Text('ERROR'),);
                    
                    
                  }));
                },
              
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
