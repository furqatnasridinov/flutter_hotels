import 'package:flutter/material.dart';
import 'package:flutter_hotels/infrastructure/services/app_colors.dart';
import 'package:flutter_hotels/presentation/custom_widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextsInRow extends StatelessWidget {
  final String firstString;
  final String secondScreen;
  const TextsInRow({
    super.key,
    required this.firstString,
    required this.secondScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 125.w,
          child: CustomText(
            text: firstString,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            textColor: AppColors.greyText,
          ),
        ),
        15.horizontalSpace,
        SizedBox(
          width: 200.w,
          child: CustomText(
            text: secondScreen,
            fontSize: 16.sp,
          ),
        ),
      ],
    );
  }
}
