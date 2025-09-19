import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar_app/constants/colors.dart';

class ContainerOfCountryWidget extends StatelessWidget {
  const ContainerOfCountryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      height: 50.h,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffB1B1B1)),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "lib/assets/images/sud.png",
            width: 25.w,
            height: 15.h,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 2.h),
          Text(
            "+966",
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.w500,
              fontSize: 15.sp,
            ),
          ),
        ],
      ),
    );
  }
}
