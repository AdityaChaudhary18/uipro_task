import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../components/gradient_text_button.dart';
import '../../components/page_header.dart';
import '../../constants/constants.dart';

class SignInMobile extends StatefulWidget {
  const SignInMobile({Key? key}) : super(key: key);

  @override
  State<SignInMobile> createState() => _SignInMobileState();
}

class _SignInMobileState extends State<SignInMobile> {
  final mobileController = TextEditingController();
  final otpController = TextEditingController();
  bool isSubmitted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PageHeader(
              title: "Enter Mobile Number to continue",
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Column(
                children: [
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
                    decoration: authTextFieldDecoration.copyWith(
                        prefixIcon: Icon(Icons.flag), prefixText: "+91"),
                    controller: mobileController,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  isSubmitted
                      ? Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "ENTER ONE TIME OTP",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            TextFormField(
                              decoration: authTextFieldDecoration.copyWith(
                                  suffixText: "RESEND",
                                  suffixStyle: TextStyle(color: Colors.black)),
                              controller: mobileController,
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                          ],
                        )
                      : SizedBox(
                          height: 0,
                        ),
                  GestureDetector(
                    onTap: () {
                      if (!isSubmitted) {
                        setState(() {
                          isSubmitted = true;
                        });
                      }
                    },
                    child: GradientTextButton(
                      text: !isSubmitted ? "Get OTP" : "Submit",
                    ),
                  ),
                  SizedBox(
                    height: !isSubmitted ? 3.h : 0,
                  ),
                  !isSubmitted
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 15.w,
                              height: 0.2.h,
                              color: Colors.grey,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.w),
                              child: Text(
                                "OR SIGN IN WITH",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              width: 15.w,
                              height: 0.2.h,
                              color: Colors.grey,
                            ),
                          ],
                        )
                      : SizedBox(
                          height: 0,
                        ),
                  SizedBox(
                    height: !isSubmitted ? 1.h : 0,
                  ),
                  !isSubmitted
                      ? GestureDetector(
                          onTap: () {
                            Navigator.popAndPushNamed(context, '/');
                          },
                          child: Image.asset("images/google.png"))
                      : SizedBox(
                          height: 0,
                        ),
                  SizedBox(height: 15.h),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.popAndPushNamed(context, "/signupMobile");
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.sp),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
