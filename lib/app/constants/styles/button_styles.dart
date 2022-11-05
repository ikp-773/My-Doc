import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/dark.dart';

class ButtonStylesDark {
  static ButtonStyle defElevButtonStyle = ButtonStyle(
    elevation: MaterialStateProperty.all<double>(5),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        EdgeInsets.fromLTRB(0, 13.h, 0, 13.h)),
    backgroundColor: MaterialStateProperty.all<Color>(ThemeDark.btnColor),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
      ),
    ),
  );
}
