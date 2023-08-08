import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/utils/app_color.dart';

ThemeData getAppTheme(){
  return ThemeData(
    textTheme: TextTheme(
        displayLarge: GoogleFonts.poppins(
          color: AppColors.primary,
          fontWeight: FontWeight.w600,
          fontSize: 28,
        ),
        displayMedium: GoogleFonts.poppins(
          color: AppColors.white,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
        displaySmall: GoogleFonts.poppins(
                                color: AppColors.white.withOpacity(0.44),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
      ),
  );
}