import 'package:flutter/material.dart';
import 'package:team_task/core/utils/app_color.dart';
import 'package:team_task/core/utils/app_strings.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Text(
                  AppString.resetPassword,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Text(AppString.resetPasswordHint,
                    style: Theme.of(context).textTheme.displayMedium),
                Image.asset('assets/images/deadline 2.png'),
                const SizedBox(
                  height: 56,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      suffixIcon: const Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                      ),
                      fillColor: const Color(0xff000000).withOpacity(0.03),
                      filled: true,
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: const Icon(
                        Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      fillColor: const Color(0xff000000).withOpacity(0.03),
                      filled: true,
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                         RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          
                        ),
                      ),
                      backgroundColor:
                          const MaterialStatePropertyAll(AppColors.primary),
                    ),
                    onPressed: () {},
                    child: const Text('Reset'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
