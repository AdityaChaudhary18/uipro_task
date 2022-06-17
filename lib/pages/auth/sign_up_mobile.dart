import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../components/gradient_text_button.dart';
import '../../components/page_header.dart';
import '../../constants/constants.dart';
import 'otp_page.dart';

class SignUpMobile extends StatefulWidget {
  const SignUpMobile({Key? key}) : super(key: key);

  @override
  State<SignUpMobile> createState() => _SignUpMobileState();
}

class _SignUpMobileState extends State<SignUpMobile> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final mobileNumberController = TextEditingController();
  final nameController = TextEditingController();

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
              height: 3.h,
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
                    controller: nameController,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
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
                    controller: mobileNumberController,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "FULL NAME",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  TextFormField(
                    decoration: authTextFieldDecoration,
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "E-MAIL",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  TextFormField(
                    decoration: authTextFieldDecoration,
                    controller: passwordController,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Radio(
                            value: "radio value",
                            groupValue: "group value",
                            onChanged: (value) {
                              print(value); //selected value
                            }),
                        Container(
                          width: 70.w,
                          child: Text(
                            "By continuing you agree to our Terms of Service and Privacy Policy.",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OTPpage(
                                    isReset: false,
                                  )));
                    },
                    child: GradientTextButton(
                      text: "Submit",
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.popAndPushNamed(context, '/signinMobile');
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp),
                        ),
                      )
                    ],
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
