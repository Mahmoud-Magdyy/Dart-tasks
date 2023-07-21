import 'package:code_with_me/core/utils/app_color.dart';
import 'package:code_with_me/core/utils/app_images.dart';
import 'package:code_with_me/core/utils/app_strings.dart';
import 'package:code_with_me/features/auth/screens/on_boarding_screen2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreenOne extends StatelessWidget {
  const OnBoardingScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          //skip Button
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  AppStrings.skip,
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.seconryColor),
                ),
              ),
            ],
          ),
          const SizedBox(height: 63),
          // images
          SizedBox(
              height: 300, width: 300, child: Image.asset(AppImages.imgPath1)),
          const SizedBox(height: 48),

          //title
          Text(
            AppStrings.onBoardingTitleOne,
            style:
                GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w600),
          ),

          const SizedBox(height: 4),

          //subTitle
          Text(
            AppStrings.onBoardingSubTitleOne,
            style: GoogleFonts.poppins(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: AppColor.seconryColor,
            ),
          ),

        
          const Spacer(),

          //next button
          Row(
            children: [
              const Spacer(),
              SizedBox(
                height: 60,
                width: 125,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_){
                        return OnBoardingScreenTwo();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: AppColor.primaryColor,
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(AppStrings.next),
                        Icon(Icons.arrow_forward),
                      ],
                    )),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
