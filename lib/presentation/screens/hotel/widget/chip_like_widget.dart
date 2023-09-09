import 'package:flutter/material.dart';
import 'package:flutter_hotels/infrastructure/services/app_colors.dart';
import 'package:flutter_hotels/presentation/custom_widgets/custom_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChipLikeWidget extends StatelessWidget {
  final String text;
  const ChipLikeWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: AppColors.greyContainer,
        borderRadius: BorderRadius.circular(5.r),
      ),
      height: 30.h,
      child: CustomText(
        text: text,
        fontSize: 16.sp,
        textColor: AppColors.greyText,
      ),
    );
  }
}
