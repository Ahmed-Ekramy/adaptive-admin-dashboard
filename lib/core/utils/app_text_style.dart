import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppStyles {
  ///styleRegular
  static TextStyle styleRegular16(context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: 16,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      color: const Color(0xFF64748B),
      fontSize: 14,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
      color: const Color(0xFF64748B),
      fontSize: 12,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }

  ///styleMedium
  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: 16,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium14(BuildContext context) {
    return TextStyle(
      color: AppColors.textSecondary,
      fontSize: 14,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium11(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF475569),
      fontSize: 11,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium10(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF64748B),
      fontSize: 10,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: 20,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold14(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF355872),
      fontSize: 14,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold12(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF94A3B8),
      fontSize: 12,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: 20,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: 24,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: 18,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  ///styleBold
  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF0F172A),
      fontSize: 16,
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle styleBold14(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF0F172A),
      fontSize: 14,
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle styleBold12(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF355872),
      fontSize: 12,
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle styleBold18(BuildContext context) {
    return TextStyle(
      color:  Colors.black,
      fontSize: 18,
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle styleBold24(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: 24,
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold,
    );
  }
}
