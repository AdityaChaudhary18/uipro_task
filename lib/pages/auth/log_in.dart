import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../components/gradient_text_button.dart';
import '../../components/page_header.dart';
import '../../constants/RoundedButton.dart';
import '../../constants/constants.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PageHeader(
              title: "Sign in For Driver",
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
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/forgot");
                    },
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  GradientTextButton(
                    text: "Sign In",
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
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
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.popAndPushNamed(context, "/signinMobile");
                    },
                    child: Column(
                      children: [
                        Text(
                          "MOBILE",
                          style: TextStyle(fontSize: 6.sp),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Image.asset("images/mobile.png"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Row(
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
                          Navigator.popAndPushNamed(context, "/signup");
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
