import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class GradientTextButton extends StatelessWidget {
  final String text;
  const GradientTextButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
          width: 80.w,
          height: 10.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(
                  colors: <Color>[Color(0xFF715D1A), Color(0xFFD2A108)])),
          child: Center(
            child: Text(
              "$text",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                  color: Colors.white),
            ),
          ),
        ));
  }
}
