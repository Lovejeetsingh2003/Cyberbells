import 'package:cyberbells/presentation/widgets/custom_button.dart';
import 'package:cyberbells/presentation/widgets/custom_textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart' show Provider;

import '../../../provider/firebase_provider.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController phoneNoController;
  late TextEditingController nameController;
  late TextEditingController confirmPswController;
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    phoneNoController = TextEditingController();
    nameController = TextEditingController();
    confirmPswController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    phoneNoController.dispose();
    nameController.dispose();
    confirmPswController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.9;
    final authProvider = Provider.of<FirebaseProvider>(context, listen: false);
    void signup(String email, String password) async {
      await authProvider.registerWithEmailAndPassword(email, password);
      Fluttertoast.showToast(msg: "Sign Up Successfull.");
      Navigator.pop(context);
    }

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
              labelText: "Enter your name",
              icon: Icons.person,
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
              icon: Icons.email,
              labelText: "name@email.com",
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
              labelText: "XXX-XXX-XXXX",
              icon: Icons.phone,
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
              labelText: "Create a password",
              icon: Icons.password,
              isPassword: true,
            ),
            SizedBox(height: 10),
            CustomTextfield(
              controller: confirmPswController,
              labelText: "Confirm password",
              icon: Icons.password,
              isPassword: true,
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
                if (emailController.text.isNotEmpty &&
                    passwordController.text.isNotEmpty &&
                    nameController.text.isNotEmpty &&
                    phoneNoController.text.isNotEmpty &&
                    confirmPswController.text.isNotEmpty) {
                  if (passwordController.text == confirmPswController.text) {
                    signup(emailController.text, passwordController.text);
                  } else {
                    Fluttertoast.showToast(
                      msg: "Password and confirm password do not match.",
                    );
                  }
                } else {
                  Fluttertoast.showToast(msg: "Please fill all fields");
                }
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
