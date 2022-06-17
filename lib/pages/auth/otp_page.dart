import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:pinput/pinput.dart';
import '../../components/gradient_text_button.dart';
import '../../components/page_header.dart';

class OTPpage extends StatefulWidget {
  final bool isReset;
  const OTPpage({required this.isReset});

  @override
  State<OTPpage> createState() => _OTPpageState();
}

class _OTPpageState extends State<OTPpage> {
  final _pinPutController = TextEditingController();
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color(0xFFE5E7E9),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PageHeader(
            title: "Enter OTP To verify Details",
          ),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
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
          SizedBox(
            height: 3.h,
          ),
          Container(
            width: 80.w,
            child: Text(
              "Please type the vertification code send to +91-8682215XXX"
                  .toUpperCase(),
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 10.sp),
            ),
          ),
          SizedBox(height: 5.h),
          Pinput(
            onCompleted: (pin) => print(pin),
            defaultPinTheme: defaultPinTheme,
          ),
          SizedBox(
            height: 5.h,
          ),
          GestureDetector(
            onTap: () {
              if (widget.isReset) Navigator.pushNamed(context, "/newPassword");
            },
            child: GradientTextButton(text: "Continue"),
          ),
          SizedBox(
            height: 3.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Resend Code in : 00:12s",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp,
                    color: Colors.black54),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
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
    );
  }
}
