import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PageHeader extends StatelessWidget {
  final String title;
  const PageHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/login_back.png"), fit: BoxFit.cover),
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
      ),
      height: 23.h,
      child: Column(
        children: [
          SizedBox(
            height: 8.h,
          ),
          Text(
            "Speedo",
            style: TextStyle(
                fontSize: 16.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 3.h,
          ),
          Text(
            "Welcome to Speedo",
            style: TextStyle(
                fontSize: 13.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "$title",
            style: TextStyle(fontSize: 11.sp, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
