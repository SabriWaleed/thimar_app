import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar_app/constants/colors.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget({super.key, required this.text, this.image});
  final String text;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      height: 50.h,
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 15.h,
            horizontal: 12.w,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.r)),
          hintText: text,
          hintTextDirection: TextDirection.rtl,
          hintStyle: TextStyle(color: Color(0xffB1B1B1), fontSize: 15.sp),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide(color: primaryColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide(color: Color(0xffB1B1B1)),
          ),
          suffixIcon: image != null
              ? Padding(
                  padding: EdgeInsets.all(12.0.r),
                  child: Image.asset(
                    image!,
                    width: 24.w,
                    height: 24.h,
                    fit: BoxFit.contain,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
