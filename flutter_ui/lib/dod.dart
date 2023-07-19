import 'package:flutter/material.dart';
import 'package:flutter_ui/onc.dart';
import 'package:flutter_ui/task6/task.dart';

class login extends StatelessWidget {
   login({super.key});
  TextEditingController emal =TextEditingController();
  TextEditingController pass =TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            TextField(
              controller: emal,
              decoration: InputDecoration(
                  
                  hintText: 'Enter Your Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              controller: pass,
              decoration: InputDecoration(
                  hintText: 'Enter Your Passward',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            OutlinedButton(
                onPressed: () {
                      
                  if(emal.text=='flutter@gmail.com'&&pass.text=='upacademy'){
                    Navigator.push(context, MaterialPageRoute(builder:(_){
                    return Onc();
                  } ));
                  }
                  else{
                    print("not valid");
                  }
                },
                child: Text('login'),
                style: OutlinedButton.styleFrom(foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                )
          ]),
        ),
      ),
    );
  }
}
