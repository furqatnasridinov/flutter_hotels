import 'package:flutter/material.dart';
import 'package:flutter_hotels/application/hotel/hotel_notifier.dart';
import 'package:flutter_hotels/application/hotel/hotel_state.dart';
import 'package:flutter_hotels/infrastructure/services/app_colors.dart';
import 'package:flutter_hotels/presentation/custom_widgets/custom_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'widget.dart';

class SecondSection extends StatelessWidget {
  const SecondSection({
    super.key,
    required this.event,
    required this.state,
  });
  final HotelNotifier event;
  final HotelState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.r),
          bottomRight: Radius.circular(12.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomText(
            text: "Об отеле",
            fontSize: 22.sp,
          ),
          21.verticalSpace,
          Wrap(
            spacing: 8.w,
            runSpacing: 8.w,
            children: const [
              ChipLikeWidget(text: "3-я линия"),
              ChipLikeWidget(text: "Платный Wi-Fi в фойе"),
              ChipLikeWidget(text: "30 км до аэропорта"),
              ChipLikeWidget(text: "1 км до пляжа"),
            ],
          ),
          12.verticalSpace,
          CustomText(
            text: state.hotel?.aboutTheHotel?.description,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
          16.verticalSpace,
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: AppColors.greyContainer),
            width: double.maxFinite,
            padding: EdgeInsets.all(15.r),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListileLikeWidget(
                  title: "Удобства",
                  subTitle: "Самое необходимое",
                  leading: SvgPicture.asset(
                    "assets/svg/emoji-happy.svg",
                    fit: BoxFit.cover,
                  ),
                ),
                ListileLikeWidget(
                  title: "Что включено",
                  subTitle: "Самое необходимое",
                  leading: SvgPicture.asset(
                    "assets/svg/tick-square.svg",
                    fit: BoxFit.cover,
                  ),
                ),
                ListileLikeWidget(
                  title: "Удобства",
                  subTitle: "Самое необходимое",
                  leading: SvgPicture.asset(
                    "assets/svg/close-square.svg",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
