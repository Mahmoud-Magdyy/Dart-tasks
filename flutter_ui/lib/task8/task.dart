import 'package:flutter/material.dart';
import 'package:flutter_ui/task6/task.dart';

// void main() {
//   runApp(App());
// }

class App extends StatefulWidget {
  
  App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  
  bool isVis = true;
  @override
  Widget build(BuildContext context) {
    return 
       SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text('login screen'),
        ),
        body: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                    
                        prefixIcon: Icon(Icons.email),
                        hintText: 'Enter Your Email',
                        labelText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                    validator: (value) {
                      if (!value!.contains('@gmail.com')) {
                        return 'Email Not Valid';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: isVis,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isVis = !isVis;
                            });
                          },
                          icon: isVis
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                        ),
                        prefixIcon: Icon(Icons.email),
                        hintText: 'Enter Your Password',
                        labelText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                    validator: (value) {
                      if (value!.length < 6) {
                        return 'Password Not Valid';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'number phone',
                      prefixIcon: Icon(Icons.phone),
                        
                        labelText: 'phone',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))

                    ),
                  ),
                  OutlinedButton(onPressed: () {

                   if(formKey.currentState!.validate()){
                     Navigator.push(context, MaterialPageRoute(builder: (_)=> BusinessCard(emailController.text,passwordController.text,phoneController.text) ));
                   }
                   else{
                    return print('not valid');
                   }
                  }, child: Text('login')),
                ],
              ),
            )),
      ),
    );
  }
}
