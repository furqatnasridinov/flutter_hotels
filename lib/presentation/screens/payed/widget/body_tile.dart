import 'package:flutter/material.dart';
import 'package:flutter_hotels/infrastructure/services/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../custom_widgets/custom_widgets.dart';

class BodyTile extends StatelessWidget {
  const BodyTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 94.w,
          height: 94.h,
          child: Image.asset(
            "assets/images/payed.png",
            fit: BoxFit.cover,
          ),
        ),
        32.verticalSpace,
        CustomText(
          text: "Ваш заказ принят в работу",
          fontSize: 22.sp,
        ),
        20.verticalSpace,
        CustomText(
          text:
              "Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.",
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          textColor: AppColors.greyText,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
