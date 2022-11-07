import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final List genderList = ['Male', 'Female', 'Others'];

  late RxString dropdownValue = ''.obs;

  void setSelected(String value) {
    dropdownValue.value = value;
  }

  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  void onInit() {
    dropdownValue.value = genderList.first;
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
