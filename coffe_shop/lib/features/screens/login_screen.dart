import 'package:coffe_shop/core/utils/app_color.dart';
import 'package:coffe_shop/features/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController controllerPassword = TextEditingController();

  TextEditingController controllerEmail = TextEditingController();

  bool isVis = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 12, 14, 14),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/back.jpg"),
                          fit: BoxFit.cover,
                          alignment: Alignment.centerLeft
                          ),
                          ),
                )),
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Sign in',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const SignUpScreen()));
                              },
                              child: const Text(
                                'Sign up',
                                style: TextStyle(
                                    color: AppColor.buttonColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                          style: const TextStyle(color: Colors.white),
                          controller: controllerEmail,
                          decoration: InputDecoration(
                            
                            prefixIconColor: AppColor.buttonColor,
                            prefixIcon: const Icon(Icons.email),
                            hintText: 'Email',
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
                          validator: (controllerEmail) {
                      if (!controllerEmail!.contains("@gmail.com")) {
                        return 'Email must be contained @gmail.com';
                      }
                      return null;
                    },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          style: const TextStyle(color: Colors.white),
                          controller: controllerPassword,
                           obscureText: isVis,
                          decoration: InputDecoration(
                            
                            suffixIcon: IconButton(onPressed: (){
                              setState(() {
                                isVis = !isVis;
                              });

                                

                            },icon:isVis
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility)),
                            suffixIconColor: AppColor.buttonColor,
                            hintText: 'Password',
                            hintStyle: const TextStyle(color: Colors.white),
                            prefixIcon: const Icon(Icons.lock),
                            prefixIconColor: AppColor.buttonColor,
                            enabledBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColor.buttonColor),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColor.buttonColor.withOpacity(0.8)),
                            ),
                          ),
                          validator: (value) {
                            if (value!.length < 6) {
                              return 'Length Password must be at least 6 characters';
                            }
                            return null;
                          },
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
                                if (formKey.currentState!.validate()) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomePage()));
                                }
                              },
                              child: const Text('Sign in')),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
