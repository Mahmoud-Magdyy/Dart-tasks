import 'package:code_with_me/core/utils/app_color.dart';
import 'package:code_with_me/core/utils/app_images.dart';
import 'package:code_with_me/core/utils/app_strings.dart';
import 'package:code_with_me/core/utils/commons.dart';
import 'package:code_with_me/features/auth/screens/home_screen.dart';
import 'package:code_with_me/features/auth/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreenThree extends StatelessWidget {
  const OnBoardingScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          
          const SizedBox(height: 130),
          // images
          SizedBox(
              height: 300, width: 300, child: Image.asset(AppImages.imgPath3)),
          const SizedBox(height: 48),

          //title
          Text(
            AppStrings.onBoardingTitleThree,
            style:
                GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w600),
          ),

          const SizedBox(height: 4),

          //subTitle
          Text(
           
            AppStrings.onBoardingSubTitleThree,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: AppColor.seconryColor,
            ),
          ),

        
          const Spacer(),

          //start button
          const Spacer(),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  pushMethod(context, signIn());
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: AppColor.primaryColor,
                ),
                child:const Text(AppStrings.start),),
          )
        ]),
      ),
    );
  }
}
