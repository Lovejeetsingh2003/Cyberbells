import 'package:cyberbells/presentation/pages/auth_pages/forgot_password_page.dart';
import 'package:cyberbells/presentation/pages/auth_pages/signup_page.dart';
import 'package:cyberbells/presentation/pages/home_pages/home_page.dart';
import 'package:cyberbells/presentation/widgets/custom_button.dart';
import 'package:cyberbells/presentation/widgets/custom_textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final width = MediaQuery.of(context).size.width * 0.9;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/login.png",
              height: MediaQuery.of(context).size.width * 0.9,
              width: MediaQuery.of(context).size.width * 0.9,
            ),
            Text(
              "Welcome!",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            CustomTextfield(
              controller: emailController,
              hintText: "Email Address",
            ),
            SizedBox(height: 20),
            CustomTextfield(
              controller: passwordController,
              hintText: "Password",
              isPassword: true,
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    duration: Duration(milliseconds: 200),
                    type: PageTransitionType.rightToLeft,
                    child: ForgotPasswordPage(),
                  ),
                );
              },
              child: Text(
                "Forgot password?",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff08979C),
                ),
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  PageTransition(
                    duration: Duration(milliseconds: 200),
                    type: PageTransitionType.rightToLeft,
                    child: HomePage(),
                  ),
                  (route) => false,
                );
              },
              title: "Login",
              width: width,
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: Text.rich(
                TextSpan(
                  text: "Not a member? ",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff71727A),
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    TextSpan(
                      text: "Sign Up",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff08979C),
                        fontWeight: FontWeight.w600,
                      ),
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  duration: Duration(milliseconds: 200),
                                  type: PageTransitionType.rightToLeft,
                                  child: SignupPage(),
                                ),
                              );
                            },
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Or continue with",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff71727A),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/google.png", height: 50, width: 50),
                SizedBox(width: 10),
                Image.asset("assets/images/apple.png", height: 50, width: 50),
                SizedBox(width: 10),
                Image.asset("assets/images/fb.png", height: 50, width: 50),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
