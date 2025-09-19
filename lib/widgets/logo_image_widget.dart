import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoImageWidget extends StatelessWidget {
  const LogoImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Image.asset(
          "lib/assets/images/logo.png",
          width: 140.w,
          height: 140.h,
          fit: BoxFit.contain,
        );
  }
}