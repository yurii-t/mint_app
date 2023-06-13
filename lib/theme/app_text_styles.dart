import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mint_app/theme/app_colors.dart';

class AppTextStyles {
  static final TextStyle title = GoogleFonts.inter(
    fontWeight: FontWeight.w700,
    textStyle: TextStyle(
      fontSize: 34.sp,
      color: AppColors.black,
    ),
  );
  static final TextStyle subtitleGrey = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    textStyle: TextStyle(
      fontSize: 12.sp,
      color: AppColors.lightGrey,
    ),
  );

  static final TextStyle boldNormal = GoogleFonts.inter(
    fontWeight: FontWeight.w600,
    textStyle: TextStyle(
      fontSize: 17.sp,
      color: AppColors.black,
    ),
  );

  static final TextStyle regularText = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    textStyle: TextStyle(
      fontSize: 17.sp,
      color: AppColors.black,
    ),
  );
  static final TextStyle regularTextGrey = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    textStyle: TextStyle(
      fontSize: 13.sp,
      color: AppColors.lightGrey,
    ),
  );
  static final TextStyle bottomBarIconText = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    textStyle: TextStyle(
      fontSize: 10.sp,
      color: AppColors.lightGrey,
    ),
  );
}
