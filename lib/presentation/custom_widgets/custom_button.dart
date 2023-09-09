import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../infrastructure/services/app_colors.dart';
import 'custom_widgets.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  void Function() onPressed;
  final String text;
  double? height;
  final double width;
  Color buttonColor;
  Color textColor;
  CustomButton({
    Key? key,
    required this.onPressed,
    required this.width,
    required this.text,
    this.height = 48,
    this.textColor = Colors.white,
    this.buttonColor = AppColors.blueText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height!.h,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(buttonColor),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.r),
              ),
            )),
        child: CustomText(
          text: text,
          textColor: textColor,
          fontWeight: FontWeight.w700,
          fontSize: 17.sp,
        ),
      ),
    );
  }
}
