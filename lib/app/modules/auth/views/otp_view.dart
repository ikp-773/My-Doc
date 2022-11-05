import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../constants/styles/button_styles.dart';
import '../../../constants/styles/font_styles.dart';
import '../../../constants/themes/dark.dart';
import '../../../routes/app_pages.dart';

class OtpVerifyView extends GetView {
  const OtpVerifyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeDark.bgColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(43.w, 0, 43.w, 5.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 49.h, bottom: 128.h),
                  child: Icon(
                    Icons.arrow_back_rounded,
                    size: 30.sp,
                  ),
                ),
              ],
            ),
            Text(
              'Verify',
              style: AuthFontStylesDark.authHeader,
            ),
            SizedBox(height: 21.h),
            Text(
              'Enter the OTP send to your mobile number.',
              style: AuthFontStylesDark.authSubHeader,
            ),
            SizedBox(height: 38.h),
            PinCodeTextField(
              length: 4,
              textStyle: AuthFontStylesDark.authTextField,
              obscureText: false,
              keyboardType: TextInputType.number,
              showCursor: false,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5.r),
                  fieldHeight: 45.h,
                  fieldWidth: 42.w,
                  activeFillColor: ThemeDark.otpBoxColor,
                  activeColor: ThemeDark.otpBoxColor,
                  selectedColor: ThemeDark.otpBoxColor,
                  selectedFillColor: ThemeDark.otpBoxColor,
                  disabledColor: ThemeDark.otpBoxColor,
                  inactiveColor: ThemeDark.otpBoxColor,
                  inactiveFillColor: ThemeDark.otpBoxColor),
              animationDuration: const Duration(milliseconds: 300),
              backgroundColor: Colors.transparent,
              enableActiveFill: true,
              onCompleted: (v) {},
              onChanged: (value) {},
              appContext: context,
            ),
            SizedBox(height: 87.h),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed(Routes.BIODATA);
              },
              style: ButtonStylesDark.defElevButtonStyle,
              child: Text(
                'Continue',
                style: AuthFontStylesDark.authBtns,
              ),
            )
          ],
        ),
      ),
    );
  }
}
