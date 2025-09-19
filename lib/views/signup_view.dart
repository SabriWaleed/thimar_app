import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar_app/constants/colors.dart';
import 'package:thimar_app/views/login_view.dart';
import 'package:thimar_app/widgets/containerofcountry_widget.dart';
import 'package:thimar_app/widgets/filledbutton_widget.dart';
import 'package:thimar_app/widgets/logo_image_widget.dart';
import 'package:thimar_app/widgets/textbutton_widget.dart';
import 'package:thimar_app/widgets/textfield_widget.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

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
              "يمكنك تسجيل حساب جديد الأن",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w300,
                color: secondaryColor,
              ),
            ),
            SizedBox(height: 29.h),
            TextfieldWidget(
              text: "اسم المستخدم",
              image: "lib/assets/images/User.png",
            ),
            SizedBox(height: 16.h),
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
              text: "المدينة",
              image: "lib/assets/images/Report.png",
            ),
            SizedBox(height: 16.h),
            TextfieldWidget(
              text: "كلمة المرور",
              image: "lib/assets/images/Unlock.png",
            ),
            SizedBox(height: 16.h),
            TextfieldWidget(
              text: "تأكيد كلمة المرور",
              image: "lib/assets/images/Unlock.png",
            ),
            SizedBox(height: 16.h),
            Center(
              child: FilledbuttonWidget(onPressed: () {}, title: "تسجيل"),
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
                        MaterialPageRoute(builder: (context) => LoginView()),
                      );
                    },
                    title: "تسجيل الدخول",
                    fontWeight: FontWeight.w700,
                    color: primaryColor,
                  ),
                  Text(
                    "لديك حساب بالفعل ؟",
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
