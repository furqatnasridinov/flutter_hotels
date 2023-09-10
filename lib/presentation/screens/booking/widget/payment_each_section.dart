import 'package:flutter/material.dart';
import 'package:flutter_hotels/infrastructure/services/app_colors.dart';
import 'package:flutter_hotels/presentation/custom_widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentEachSection extends StatelessWidget {
  final String firstText;
  final String secondText;
  Color? texcolor;
   PaymentEachSection({
    super.key,
    required this.firstText,
    required this.secondText,
    this.texcolor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: firstText,
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          textColor: AppColors.greyText,
        ),
        CustomText(
          text: secondText,
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          textColor: texcolor,
        ),
      ],
    );
  }
}
