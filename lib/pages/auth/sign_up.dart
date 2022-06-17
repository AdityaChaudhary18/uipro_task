import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uipro/pages/auth/otp_page.dart';

import '../../components/gradient_text_button.dart';
import '../../components/page_header.dart';
import '../../constants/constants.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
              title: "Fill Details in order to continue",
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
                      "FULL NAME",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  TextFormField(
                    decoration: authTextFieldDecoration,
                    controller: nameController,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "MOBILE NUMBER ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  TextFormField(
                    decoration: authTextFieldDecoration,
                    controller: mobileNumberController,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "EMAIL",
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
                      "PASSWORD",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  TextFormField(
                    decoration: authTextFieldDecoration.copyWith(
                        suffixIcon: Icon(Icons.visibility_off)),
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
                              builder: (context) => OTPpage(isReset: false)));
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
                          Navigator.popAndPushNamed(context, '/');
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
