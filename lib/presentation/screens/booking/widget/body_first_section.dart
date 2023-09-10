import 'package:flutter/material.dart';
import 'package:flutter_hotels/application/booking/booking_state.dart';
import 'package:flutter_hotels/infrastructure/services/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../custom_widgets/custom_widgets.dart';

class BodyFirstSection extends StatelessWidget {
  const BodyFirstSection({super.key, required this.state});
  final BookingState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
      ),
      padding: EdgeInsets.all(16.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 149.w,
            height: 29.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: AppColors.yellowContainer,
            ),
            child: state.bookingInfos?.horating == 0 ||
                    state.bookingInfos!.ratingName!.isEmpty
                ? CustomText(text: "Уточняем рейтинг", fontSize: 18.sp)
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.star,
                        color: AppColors.yellowText,
                        size: 20.r,
                      ),
                      CustomText(
                        text:
                            "${state.bookingInfos?.horating ?? ""} ${state.bookingInfos?.ratingName}",
                        fontSize: 16.sp,
                        textColor: AppColors.yellowText,
                      ),
                    ],
                  ),
          ),
          8.verticalSpace,
          CustomText(
            text: "Steigenberger Makadi",
            fontSize: 22.sp,
          ),
          8.verticalSpace,
          CustomText(
            text: state.bookingInfos?.hotelAdress,
            fontSize: 14.sp,
            textColor: AppColors.blueText,
          ),
        ],
      ),
    );
  }
}
