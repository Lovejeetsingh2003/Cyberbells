import 'package:cyberbells/presentation/pages/home_pages/home_page.dart';
import 'package:cyberbells/presentation/widgets/custom_button.dart';
import 'package:cyberbells/presentation/widgets/otp_textfield.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController otp1 = TextEditingController();
    TextEditingController otp2 = TextEditingController();
    TextEditingController otp3 = TextEditingController();
    TextEditingController otp4 = TextEditingController();

    final width = MediaQuery.of(context).size.width * 0.9;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Enter confirmation code",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            Text(
              "A 4-digit code was sent to\nlucasscott3@email.com",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff71727A),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OtpTextfield(controller: otp1),
                SizedBox(width: 10),
                OtpTextfield(controller: otp2),
                SizedBox(width: 10),
                OtpTextfield(controller: otp3),
                SizedBox(width: 10),
                OtpTextfield(controller: otp4),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Resend code",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff08979C),
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
              title: "Continue",
              width: width,
            ),
          ],
        ),
      ),
    );
  }
}
