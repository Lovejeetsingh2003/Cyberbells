import 'package:cyberbells/presentation/pages/auth_pages/confirmation_page.dart';
import 'package:cyberbells/presentation/widgets/custom_button.dart';
import 'package:cyberbells/presentation/widgets/custom_textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController phoneNoController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController confirmPswController = TextEditingController();

    final width = MediaQuery.of(context).size.width * 0.9;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "Sign up",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            Text(
              "Create an account to get started ",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff71727A),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Name",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xff2F3036),
              ),
            ),
            SizedBox(height: 5),
            CustomTextfield(
              controller: nameController,
              hintText: "Enter your name",
            ),
            SizedBox(height: 10),
            Text(
              "Email Address",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xff2F3036),
              ),
            ),
            SizedBox(height: 5),
            CustomTextfield(
              controller: emailController,
              hintText: "name@email.com",
            ),
            SizedBox(height: 10),
            Text(
              "Phone Number",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xff2F3036),
              ),
            ),
            SizedBox(height: 5),
            CustomTextfield(
              controller: phoneNoController,
              hintText: "XXX-XXX-XXXX",
            ),
            SizedBox(height: 10),
            Text(
              "Password",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xff2F3036),
              ),
            ),
            SizedBox(height: 5),
            CustomTextfield(
              controller: passwordController,
              hintText: "Create a password",
            ),
            SizedBox(height: 10),
            CustomTextfield(
              controller: confirmPswController,
              hintText: "Confirm password",
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                const SizedBox(width: 8),
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      text: "I've read and agree with the",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff71727A),
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(
                          text: "Terms & Conditions",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff08979C),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: "and the",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff71727A),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: "Privacy Policy.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff08979C),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            CustomButton(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    duration: Duration(milliseconds: 200),
                    type: PageTransitionType.rightToLeft,
                    child: ConfirmationPage(),
                  ),
                );
              },
              title: "Sign Up",
              width: width,
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: Text.rich(
                TextSpan(
                  text: "Already a member? ",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff71727A),
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    TextSpan(
                      text: "Login",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff08979C),
                        fontWeight: FontWeight.w600,
                      ),
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pop(context);
                            },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
