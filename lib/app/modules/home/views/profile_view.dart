import 'package:basic/app/constants/styles/font_styles.dart';
import 'package:basic/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../constants/themes/dark.dart';

class ProfileView extends GetView {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeDark.bgColor,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.face,
                size: 100.sp,
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                'Benson',
                style: AuthFontStylesDark.authHeader,
              ),
              Text(
                '21 | Male',
                style: AuthFontStylesDark.authSubHeader,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40.w, 50.h, 40.w, 20.h),
                child: ListTile(
                  title: Text(
                    'reports',
                    style: HomeFontStylesDark.profileTile,
                  ),
                  onTap: () {},
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: ThemeDark.iconColor.withOpacity(.5),
                    size: 20.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40.w, 0, 40.w, 20.h),
                child: ListTile(
                  title: Text(
                    'hospitals visited',
                    style: HomeFontStylesDark.profileTile,
                  ),
                  onTap: () {},
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: ThemeDark.iconColor.withOpacity(.5),
                    size: 20.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40.w, 0, 40.w, 20.h),
                child: ListTile(
                  title: Text(
                    'update profile',
                    style: HomeFontStylesDark.profileTile,
                  ),
                  onTap: () {
                    Get.toNamed(Routes.BIODATA);
                  },
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: ThemeDark.iconColor.withOpacity(.5),
                    size: 20.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40.w, 0, 40.w, 20.h),
                child: ListTile(
                  title: Text(
                    'settings',
                    style: HomeFontStylesDark.profileTile,
                  ),
                  onTap: () {},
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: ThemeDark.iconColor.withOpacity(.5),
                    size: 20.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40.w, 0, 40.w, 20.h),
                child: ListTile(
                  title: Text(
                    'logout',
                    style: HomeFontStylesDark.profileTile,
                  ),
                  onTap: () {
                    Get.offAllNamed(Routes.AUTH);
                  },
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: ThemeDark.iconColor.withOpacity(.5),
                    size: 20.sp,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
