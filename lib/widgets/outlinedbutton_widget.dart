import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar_app/constants/colors.dart' show primaryColor;

class OutlinedbuttonWidget extends StatelessWidget {
  const OutlinedbuttonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          BorderSide(color: primaryColor, width: 1.5.w),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
        ),
        minimumSize: MaterialStateProperty.all<Size>(Size(133.w, 47.h)),
      ),
      child: Text(
        "إعادة الإرسال",
        style: TextStyle(
          fontSize: 15.sp,
          color: primaryColor,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
