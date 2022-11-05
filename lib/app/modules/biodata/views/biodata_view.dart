import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constants/themes/dark.dart';
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
      body: Center(
        child: Text(
          'BiodataView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
