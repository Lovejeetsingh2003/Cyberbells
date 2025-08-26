import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
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
            Image.asset(
              "assets/images/email_sent.png",
              height: MediaQuery.of(context).size.width * 0.9,
              width: MediaQuery.of(context).size.width * 0.9,
            ),
            SizedBox(height: 10),
            Text(
              "Email Sent!",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 32,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "We’ve sent a password reset link to your email. Use this link to change your password.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xff25384D),
              ),
            ),
            SizedBox(height: 20),
            Text.rich(
              TextSpan(
                text: "Didn’t get a link? ",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff71727A),
                  fontWeight: FontWeight.w400,
                ),
                children: [
                  TextSpan(
                    text: "Resend Link",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff38857B),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
