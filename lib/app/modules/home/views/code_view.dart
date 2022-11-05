import 'package:basic/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

import '../../../constants/themes/dark.dart';

class CodeView extends GetView {
  const CodeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeDark.bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 130.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
            child: PrettyQr(
              // image: AssetImage(''),
              typeNumber: 4,
              size: 100,
              data: Get.find<HomeController>().rickroll,
              errorCorrectLevel: QrErrorCorrectLevel.M,
              roundEdges: true,
              elementColor: ThemeDark.iconColor,
            ),
          ),
        ],
      ),
    );
  }
}
