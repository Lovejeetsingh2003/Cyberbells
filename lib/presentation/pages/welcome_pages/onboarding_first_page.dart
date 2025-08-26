import 'package:cyberbells/presentation/pages/auth_pages/login_page.dart';
import 'package:cyberbells/presentation/pages/welcome_pages/onboarding_second_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class OnboardingFirstPage extends StatelessWidget {
  const OnboardingFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          left: 20,
          right: 20,
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    PageTransition(
                      duration: Duration(milliseconds: 200),
                      type: PageTransitionType.rightToLeft,
                      child: LoginPage(),
                    ),
                    (route) => false,
                  );
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            Image.asset(
              "assets/images/onboarding_1.png",
              height: MediaQuery.of(context).size.width * 0.9,
              width: MediaQuery.of(context).size.width * 0.9,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(radius: 4, backgroundColor: Color(0xFF08979C)),
                SizedBox(width: 5),
                CircleAvatar(radius: 4, backgroundColor: Color(0xFF1F2024)),
                SizedBox(width: 5),
                CircleAvatar(radius: 4, backgroundColor: Color(0xFF1F2024)),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Connect with Businesses in your area like never before",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 26,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Get rewarded for being a loyal customer & in return help your local business owners improve your experience.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xff71727A),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      duration: Duration(milliseconds: 200),
                      type: PageTransitionType.rightToLeft,
                      child: OnboardingSecondPage(),
                    ),
                  );
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2, color: Color(0xffEDEDED)),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
