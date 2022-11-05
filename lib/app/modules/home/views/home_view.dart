import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constants/themes/dark.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
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
      bottomNavigationBar: FluidNavBar(
        icons: [
          FluidNavBarIcon(icon: Icons.qr_code_rounded),
          FluidNavBarIcon(icon: Icons.person_rounded),
        ],
        animationFactor: .2,
        onChange: (selectedIndex) {
          controller.currentIndex.value = selectedIndex;
        },
        style: FluidNavBarStyle(
          barBackgroundColor: ThemeDark.bottomNavColor,
          iconBackgroundColor: ThemeDark.bottomNavColor,
          iconSelectedForegroundColor: ThemeDark.iconColor,
          iconUnselectedForegroundColor: ThemeDark.iconUnSelColor,
        ),
      ),
      extendBody: true,
      body: Obx(
        () => IndexedStack(
          index: controller.currentIndex.value,
          children: controller.screens,
        ),
      ),
    );
  }
}
