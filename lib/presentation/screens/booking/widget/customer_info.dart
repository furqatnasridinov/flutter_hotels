import 'package:flutter/material.dart';
import 'package:flutter_hotels/infrastructure/services/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../custom_widgets/custom_widgets.dart';

class CustomerInfo extends StatelessWidget {
  const CustomerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: "Информация о покупателе",
            fontSize: 22.sp,
          ),
          20.verticalSpace,
          CustomTextfield(
            labelText: "Номер телефона",
            initialValue: "+7 (951) 555-99-00",
          ),
          8.verticalSpace,
          CustomTextfield(
            labelText: "Почта",
            initialValue: "examplemail.000@mail.ru",
          ),
          8.verticalSpace,
          CustomText(
            text:
                "Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту",
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            textColor: AppColors.greyText,
          ),
        ],
      ),
    );
  }
}
