import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:thimar_app/constants/colors.dart';

class OtpPageWidget extends StatelessWidget {
  const OtpPageWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: PinCodeTextField(
        appContext: context,
        length: 4,
        obscureText: false,
        keyboardType: TextInputType.number,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(15),
          fieldHeight: 60,
          fieldWidth: 70,
          inactiveColor: Color(0xffF3F3F3),
          activeColor: primaryColor,
          selectedColor: primaryColor,
        ),
        onChanged: (value) {},
      ),
    );
  }
}
