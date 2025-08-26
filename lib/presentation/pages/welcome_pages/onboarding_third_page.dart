import 'package:cyberbells/presentation/pages/auth_pages/login_page.dart';
import 'package:cyberbells/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class OnboardingThirdPage extends StatelessWidget {
  const OnboardingThirdPage({super.key});

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
            Image.asset(
              "assets/images/onboarding_3.png",
              height: MediaQuery.of(context).size.width * 0.9,
              width: MediaQuery.of(context).size.width * 0.9,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(radius: 4, backgroundColor: Color(0xFF1F2024)),
                SizedBox(width: 5),
                CircleAvatar(radius: 4, backgroundColor: Color(0xFF1F2024)),
                SizedBox(width: 5),
                CircleAvatar(radius: 4, backgroundColor: Color(0xFF08979C)),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Redeem Points for Rewards",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 26,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Exclusive discounts at local businesses\nRedeem points for free rewards\nEarn more points with higher tiers\nGet exclusive invitations as a preferred customer",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xff71727A),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
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
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: CustomButton(
                    title: "Get Started",
                    width: 150,
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
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
