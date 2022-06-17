import 'package:flutter/material.dart';

class OnBoardModel {
  final String img;
  final String title;
  final String subTitle;

  OnBoardModel({
    required this.img,
    required this.title,
    required this.subTitle,
  });
}

List<OnBoardModel> screens = <OnBoardModel>[
  OnBoardModel(
      img: 'images/onboarding_1.png',
      title: 'Pay Less Commission',
      subTitle: "When you take more trip"),
  OnBoardModel(
      img: 'images/onboarding_2.png',
      title: 'Take More Tips',
      subTitle: "Generate more revenue with speedo"),
  OnBoardModel(
      img: 'images/onboarding_3.png',
      title: 'We are glad to let you know',
      subTitle: "You can insure your vehicle via speedo app"),
];
