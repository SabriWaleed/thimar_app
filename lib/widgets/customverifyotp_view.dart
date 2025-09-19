import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar_app/constants/colors.dart';
import 'package:thimar_app/views/createnewpassord_view.dart';
import 'package:thimar_app/views/login_view.dart';
import 'package:thimar_app/widgets/filledbutton_widget.dart';
import 'package:thimar_app/widgets/logo_image_widget.dart';
import 'package:thimar_app/widgets/otppage_widget.dart';
import 'package:thimar_app/widgets/outlinedbutton_widget.dart';
import 'package:thimar_app/widgets/textbutton_widget.dart';

class CustomVerifyOtpView extends StatelessWidget {
  const CustomVerifyOtpView({super.key,required this.title});
  final String title;
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
             title,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: primaryColor,
              ),
            ),
            SizedBox(height: 12.h),
            Text(
              "أدخل الكود المكون من 4 أرقام المرسل علي رقم الجوال",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w300,
                color: secondaryColor,
              ),
              textAlign: TextAlign.right,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextbuttonWidget(
                  onPressed: () {},
                  title: "تغيير رقم الجوال",
                  fontWeight: FontWeight.w700,
                  color: primaryColor,
                ),
                Text(
                  "9660548745+",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                    color: secondaryColor,
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            SizedBox(height: 29.h),
            OtpPageWidget(),
            SizedBox(height: 24.h),
            Center(
              child: FilledbuttonWidget(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreatenewpassordView(),
                    ),
                  );
                },
                title: "تأكيد الكود",
              ),
            ),
            SizedBox(height: 23.h),
            Center(
              child: Text(
                "لم تستلم الكود ؟\nيمكنك إعادة إرسال الكود بعد",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w300,
                  color: secondaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20.h),
            Center(
              child: CircularCountDownTimer(
                width: 66.w,
                height: 66.h,
                duration: 90,
                fillColor: primaryColor,
                ringColor: Color(0xffD8D8D8),
                isReverse: true,
                textStyle: TextStyle(
                  fontSize: 21.sp,
                  color: primaryColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(child: OutlinedbuttonWidget()),
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
