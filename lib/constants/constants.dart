import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

var authTextFieldDecoration = InputDecoration(
  filled: true,
  fillColor: Color(0xFFEBEEF0),
  errorStyle: TextStyle(fontSize: 10.sp),
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(2.5.h),
      ),
      borderSide: BorderSide(color: Colors.white, width: 1)),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(2.5.h),
    ),
    borderSide: BorderSide(
      width: 1,
    ),
  ),
);

Color kblue = Color(0xFF004AAD);
Color kwhite = Colors.white;
Color kblack = Colors.black;
Color kbrown = Color(0xFF795548);
Color kbrown300 = Color(0xFF8D6E63);
Color kgrey = Color(0xFFC0C0C0);
