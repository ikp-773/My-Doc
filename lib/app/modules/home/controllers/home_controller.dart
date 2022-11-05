import 'package:basic/app/modules/home/views/code_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../views/profile_view.dart';

class HomeController extends GetxController {
  RxInt currentIndex = 0.obs;

  final List<Widget> screens = [const CodeView(), const ProfileView()];
  String rickroll = 'https://www.youtube.com/watch?v=xvFZjo5PgG0';

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
