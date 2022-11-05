import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../constants/styles/button_styles.dart';
import '../../../constants/styles/font_styles.dart';
import '../../../constants/themes/dark.dart';
import 'auth_view.dart';
import 'otp_view.dart';

class LoginView extends GetView {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeDark.bgColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(43.w, 0, 43.w, 5.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 193.h, bottom: 80.h),
              child: Text(
                'Login',
                style: AuthFontStylesDark.authHeader,
              ),
            ),
            SizedBox(height: 30.h),
            SizedBox(
              width: 223.w,
              child: const AuthTextField(
                hintText: 'Mobile Number',
                keyboardType: TextInputType.phone,
              ),
            ),
            SizedBox(height: 76.h),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const OtpVerifyView());
              },
              style: ButtonStylesDark.defElevButtonStyle,
              child: Text(
                'Login',
                style: AuthFontStylesDark.authBtns,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h),
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Text(
                  'Signup?',
                  textAlign: TextAlign.center,
                  style: AuthFontStylesDark.authSubHeader,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
