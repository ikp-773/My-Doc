import 'package:basic/app/modules/auth/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../constants/styles/button_styles.dart';
import '../../../constants/styles/font_styles.dart';
import '../../../constants/themes/dark.dart';
import '../controllers/auth_controller.dart';
import 'otp_view.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({super.key});

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
                'Create an \nAccount',
                style: AuthFontStylesDark.authHeader,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 134.w,
                  child: const AuthTextField(
                    hintText: 'First Name',
                    keyboardType: TextInputType.name,
                  ),
                ),
                SizedBox(
                  width: 134.w,
                  child: const AuthTextField(
                    hintText: 'Last Name',
                    keyboardType: TextInputType.name,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            SizedBox(
              width: 223.w,
              child: const AuthTextField(
                hintText: 'Gender',
                keyboardType: TextInputType.name,
              ),
            ),
            SizedBox(height: 30.h),
            SizedBox(
              width: 223.w,
              child: const AuthTextField(
                hintText: 'Email Address',
                keyboardType: TextInputType.emailAddress,
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
                'Signup',
                style: AuthFontStylesDark.authBtns,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const LoginView());
                },
                child: Text(
                  'Log in?',
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

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    Key? key,
    required this.hintText,
    required this.keyboardType,
  }) : super(key: key);

  final String hintText;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: null,
      keyboardType: keyboardType,
      textCapitalization: TextCapitalization.words,
      style: AuthFontStylesDark.authTextField,
      cursorColor: ThemeDark.primaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AuthFontStylesDark.authTextFieldHint,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ThemeDark.textFieldUnsel),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ThemeDark.textFieldSel),
        ),
      ),
    );
  }
}
