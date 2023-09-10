import 'package:flutter/material.dart';
import 'package:flutter_hotels/infrastructure/services/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../custom_widgets/custom_widgets.dart';

class RoomDetailes extends StatelessWidget {
  const RoomDetailes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210.w,
      padding: EdgeInsets.symmetric(vertical: 5.h),
      color: AppColors.blueContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomText(
            text: "Подробнее о номере",
            fontSize: 16.sp,
            textColor: AppColors.blueText,
          ),
           Icon(
            Icons.arrow_forward_ios,
            color: AppColors.blueText,
            size: 20.r,
          )
        ],
      ),
    );
  }
}
