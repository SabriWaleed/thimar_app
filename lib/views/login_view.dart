import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar_app/constants/colors.dart';
import 'package:thimar_app/views/forgetpassword_view.dart';
import 'package:thimar_app/views/signup_view.dart';
import 'package:thimar_app/widgets/containerofcountry_widget.dart';
import 'package:thimar_app/widgets/filledbutton_widget.dart';
import 'package:thimar_app/widgets/logo_image_widget.dart';
import 'package:thimar_app/widgets/textbutton_widget.dart';
import 'package:thimar_app/widgets/textfield_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(child: LogoImageWidget()),
            Text(
              "مرحبا بك مرة أخرى",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: primaryColor,
              ),
            ),
            SizedBox(height: 12.h),
            Text(
              "يمكنك تسجيل الدخول الأن",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w300,
                color: secondaryColor,
              ),
            ),
            SizedBox(height: 29.h),
            Row(
              children: [
                Expanded(
                  child: TextfieldWidget(
                    text: "رقم الجوال",
                    image: "lib/assets/images/phone.png",
                  ),
                ),
                SizedBox(width: 8.w),
                ContainerOfCountryWidget(),
              ],
            ),
            SizedBox(height: 16.h),
            TextfieldWidget(
              text: "كلمة المرور",
              image: "lib/assets/images/Unlock.png",
            ),
            SizedBox(height: 10.h),
            Align(
              alignment: Alignment.centerLeft,
              child: TextbuttonWidget(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgetpasswordView(),
                    ),
                  );
                },
                title: "نسيت كلمة المرور؟",
                fontWeight: FontWeight.w300,
                color: Color(0xff707070),
              ),
            ),
            SizedBox(height: 33.h),
            Center(
              child: FilledbuttonWidget(
                onPressed: () {},
                title: "تسجيل الدخول",
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextbuttonWidget(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignupView()),
                      );
                    },
                    title: "تسجيل الأن",
                    fontWeight: FontWeight.w700,
                    color: primaryColor,
                  ),
                  Text(
                    "ليس لديك حساب ؟",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
