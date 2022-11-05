import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constants/themes/dark.dart';

class ProfileView extends GetView {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeDark.bgColor,
    );
  }
}
