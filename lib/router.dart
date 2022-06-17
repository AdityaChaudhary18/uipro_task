import 'package:flutter/material.dart';
import 'package:uipro/pages/auth/forgot_password.dart';
import 'package:uipro/pages/auth/new_password.dart';
import 'package:uipro/pages/auth/otp_page.dart';
import 'package:uipro/pages/auth/sign_in_mobile.dart';
import 'package:uipro/pages/auth/sign_up.dart';
import 'package:uipro/pages/auth/sign_up_mobile.dart';
import 'package:uipro/pages/pageNotFound.dart';
import 'pages/auth/log_in.dart';
import 'pages/onboarding/onboarding.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LogInPage());
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignUp());
      case '/onboarding':
        return MaterialPageRoute(builder: (_) => OnBoarding());
      case '/signinMobile':
        return MaterialPageRoute(builder: (_) => SignInMobile());
      case '/signupMobile':
        return MaterialPageRoute(builder: (_) => SignUpMobile());
      case '/forgot':
        return MaterialPageRoute(builder: (_) => ForgotPassword());
      case '/newPassword':
        return MaterialPageRoute(builder: (_) => NewPassword());
      default:
        return MaterialPageRoute(builder: (_) => PageNotFound());
    }
  }
}
