import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppStyles {
  ///styleRegular
  static TextStyle styleRegular16(context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsiveFontSize(context,fontSize: 16.0) ,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      color: const Color(0xFF64748B),
      fontSize:getResponsiveFontSize(context,fontSize: 14.0) ,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
      color: const Color(0xFF64748B),
      fontSize:getResponsiveFontSize(context,fontSize: 12.0) ,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  ///styleMedium
  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize:getResponsiveFontSize(context,fontSize: 16.0) ,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium14(BuildContext context) {
    return TextStyle(
      color: AppColors.textSecondary,
      fontSize:getResponsiveFontSize(context,fontSize: 14.0) ,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium11(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF475569),
      fontSize:getResponsiveFontSize(context,fontSize: 11.0) ,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium10(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF64748B),
      fontSize:getResponsiveFontSize(context,fontSize: 10.0) ,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize:getResponsiveFontSize(context,fontSize: 20.0) ,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold14(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF355872),
      fontSize:getResponsiveFontSize(context,fontSize: 14.0) ,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold12(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF94A3B8),
      fontSize:getResponsiveFontSize(context,fontSize: 12.0) ,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize:getResponsiveFontSize(context,fontSize: 20.0) ,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize:getResponsiveFontSize(context,fontSize: 24.0) ,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize:getResponsiveFontSize(context,fontSize: 18.0) ,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  ///styleBold
  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF0F172A),
      fontSize:getResponsiveFontSize(context,fontSize: 16.0) ,
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle styleBold14(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF0F172A),
      fontSize:getResponsiveFontSize(context,fontSize: 14.0) ,
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle styleBold12(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF355872),
      fontSize:getResponsiveFontSize(context,fontSize: 12.0) ,
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle styleBold18(BuildContext context) {
    return TextStyle(
      color:  Colors.black,
      fontSize:getResponsiveFontSize(context,fontSize: 18.0) ,
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle styleBold24(BuildContext context) {
    return TextStyle(
      color:Colors.black,
      fontSize:getResponsiveFontSize( context,fontSize: 24.0 ) ,
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold,
    );
  }
  static  double getResponsiveFontSize(context, {required double fontSize}) {
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = fontSize * scaleFactor;
    double lowerLimit = fontSize * .8;
    double upperLimit = fontSize * 1.2;
    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  static double getScaleFactor(context) {
    // var dispatcher = PlatformDispatcher.instance;
    // var physicalWidth = dispatcher.views.first.physicalSize.width;
    // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
    // double width = physicalWidth / devicePixelRatio;

    double width = MediaQuery.sizeOf(context).width;
    if (width < 800) {
      return width / 550;
    } else if (width < 1200) {
      return  width / 1000;
    } else {
      return width / 1920;
    }
    // if (width < SizeConfig.tablet) {
    //   return width / 550;
    // } else if (width < SizeConfig.desktop) {
    //   return width / 1000;
    // } else {
    //   return width / 1920;
    // }
}
}
