import 'package:flutter/material.dart';
import 'package:flutter_hotels/application/booking/booking_notifier.dart';
import 'package:flutter_hotels/application/booking/booking_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../infrastructure/services/app_colors.dart';
import '../../../custom_widgets/custom_widgets.dart';

class FirstTourist extends StatelessWidget {
  const FirstTourist({super.key, required this.state, required this.event});
  final BookingState state;
  final BookingNotifier event;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: Colors.white,
      ),
      child: ExpansionTile(
        onExpansionChanged: (value) {
          event.expand(value);
        },
        title: CustomText(
          text: "Первый турист ",
          fontSize: 22.sp,
        ),
        trailing: Container(
          width: 32.w,
          height: 32.h,
          decoration:  BoxDecoration(
            color: AppColors.blueContainer,
            borderRadius: BorderRadius.circular(6.r)
          ),
          child: Center(
            child: Icon(
              state.isExpanded == false
                  ? Icons.keyboard_arrow_down
                  : Icons.keyboard_arrow_up,
              color: AppColors.blueText,
            ),
          ),
        ),
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextfield(
                  labelText: "Имя",
                  initialValue: "Иван",
                ),
                8.verticalSpace,
                CustomTextfield(
                  labelText: "Фамилия",
                  initialValue: "Иванов",
                ),
                8.verticalSpace,
                CustomTextfield(labelText: "Дата рождения"),
                8.verticalSpace,
                CustomTextfield(labelText: "Гражданство"),
                8.verticalSpace,
                CustomTextfield(labelText: "Номер загранпаспорта"),
                8.verticalSpace,
                CustomTextfield(labelText: "Срок действия загранпаспорта"),
                16.verticalSpace,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
