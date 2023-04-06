import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/features/auth/screens/login_screen.dart';
import 'package:whatsapp_clone/util/colors.dart';

import '../../../common/widgets/custom_button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 50),
            Center(
              child: Text(
                'Welcome to WhatsApp',
                style: TextStyle(
                  fontSize: 80.w,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 0.9.sw,
              child: Image.asset(
                'assets/bg.png',
                color: tabColor,
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Read our Privacy Policy. Tap "Agree and Continue" to accept the Terms of Service.',
                style: TextStyle(color: Colors.blueGrey),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomButton(
                title: 'AGREE AND CONTINUE',
                onTap: () {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
