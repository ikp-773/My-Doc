import 'package:basic/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../constants/styles/button_styles.dart';
import '../../../constants/styles/font_styles.dart';
import '../../../constants/themes/dark.dart';
import '../../auth/views/auth_view.dart';
import '../controllers/biodata_controller.dart';

class BiodataView extends GetView<BiodataController> {
  const BiodataView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeDark.bgColor,
      appBar: AppBar(
        title: const Text('My Doc'),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.fromLTRB(43.w, 0, 43.w, 5.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 33.h, bottom: 20.h),
              child: Text(
                'Personal Information',
                style: AuthFontStylesDark.authSubHeader,
              ),
            ),
            SizedBox(
              width: 223.w,
              child: const AuthTextField(
                hintText: 'Name',
                isEnabled: false,
                keyboardType: TextInputType.name,
              ),
            ),
            SizedBox(height: 30.h),
            Row(
              children: [
                SizedBox(
                  width: 100.w,
                  child: const AuthTextField(
                    hintText: 'Age',
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(width: 15.w),
                SizedBox(
                  width: 150.w,
                  child: const AuthTextField(
                    isEnabled: false,
                    hintText: 'Gender',
                    keyboardType: TextInputType.name,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            SizedBox(
              width: 223.w,
              child: const AuthTextField(
                isEnabled: false,
                hintText: 'Mobile Number',
                keyboardType: TextInputType.phone,
              ),
            ),
            SizedBox(height: 30.h),
            SizedBox(
              width: 100.w,
              child: const AuthTextField(
                hintText: 'Occupation',
                keyboardType: TextInputType.name,
              ),
            ),
            SizedBox(height: 30.h),
            SizedBox(
              width: 100.w,
              child: const AuthTextField(
                hintText: 'Nationality',
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(height: 30.h),
            SizedBox(
              width: 100.w,
              child: const AuthTextField(
                hintText: 'Email Address',
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(height: 30.h),
            SizedBox(
              width: 100.w,
              child: TextFormField(
                minLines: 4,
                maxLines: 4,
                keyboardType: TextInputType.multiline,
                textCapitalization: TextCapitalization.words,
                style: AuthFontStylesDark.authTextField,
                cursorColor: ThemeDark.primaryColor,
                decoration: InputDecoration(
                  hintText: 'Address',
                  hintStyle: AuthFontStylesDark.authTextFieldHint,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ThemeDark.textFieldUnsel),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ThemeDark.textFieldSel),
                  ),
                ),
              ),
            ),
            SizedBox(height: 46.h),
            ElevatedButton(
              onPressed: () {
                Get.offNamed(Routes.HOME);
              },
              style: ButtonStylesDark.defElevButtonStyle,
              child: Text(
                'Save',
                style: AuthFontStylesDark.authBtns,
              ),
            ),
            SizedBox(height: 46.h),
          ],
        ),
      ),
    );
  }
}
