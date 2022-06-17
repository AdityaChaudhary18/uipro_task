import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:uipro/pages/auth/log_in.dart';
import '../../models/onboarding_model.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  _storeOnBoardInfo() async {
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoard', isViewed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Stack(
        children: [
          Container(
            height: 100.h,
            width: 100.w,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: <Color>[Color(0xFFFFC000), Color(0xFF212529)])),
          ),
          PageView.builder(
              itemCount: screens.length,
              controller: _pageController,
              onPageChanged: (int index) {
                setState(
                  () {
                    _currentIndex = index;
                  },
                );
              },
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 5.h),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () async {
                            await _storeOnBoardInfo();
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LogInPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Skip",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Image.asset(
                        screens[index].img,
                        height: 45.h,
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Container(
                        width: 80.w,
                        child: Text(
                          screens[index].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        width: 80.w,
                        child: Text(
                          screens[index].subTitle,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Container(
                        width: 10.w,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0))),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          child: LinearProgressIndicator(
                            color: Colors.white,
                            backgroundColor: Colors.white.withOpacity(0.5),
                            value: (_currentIndex + 1) / 3,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            gradient: LinearGradient(colors: <Color>[
                              Color(0xFFB3A988),
                              Color(0xFFFFFFFF)
                            ])),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: IconButton(
                            icon: Icon(Icons.arrow_forward),
                            color: Colors.black,
                            onPressed: () async {
                              await _storeOnBoardInfo();
                              if (index == screens.length - 1) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LogInPage(),
                                  ),
                                );
                                print("last page");
                              }
                              _pageController.nextPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.linear);
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
        ],
      ),
    );
  }
}
