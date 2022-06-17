import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uipro/pages/auth/otp_page.dart';

import '../../components/gradient_text_button.dart';
import '../../components/page_header.dart';
import '../../constants/constants.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PageHeader(
            title: "Enter Registered Number here",
          ),
          SizedBox(
            height: 2.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Material(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              children: [
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  width: 80.w,
                  child: Text(
                    "Enter your Registered number and we will send you a reset instructions."
                        .toUpperCase(),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF454F5B)),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "MOBILE NUMBER",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                TextFormField(
                  decoration: authTextFieldDecoration,
                  controller: mobileNumberController,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 7.h,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OTPpage(isReset: true)));
                    },
                    child: GradientTextButton(text: "Continue")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
