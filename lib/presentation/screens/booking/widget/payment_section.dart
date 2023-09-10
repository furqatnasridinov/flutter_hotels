import 'package:flutter/material.dart';
import 'package:flutter_hotels/application/booking/booking_notifier.dart';
import 'package:flutter_hotels/application/booking/booking_state.dart';
import 'package:flutter_hotels/infrastructure/services/app_colors.dart';
import 'package:flutter_hotels/presentation/screens/booking/widget/payment_each_section.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key, required this.event, required this.state});
  final BookingNotifier event;
  final BookingState state;

  @override
  Widget build(BuildContext context) {
    event.calculateTottalPrice(
      state.bookingInfos!.tourPrice!,
      state.bookingInfos!.fuelCharge!,
      state.bookingInfos!.serviceCharge!,
    );
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
      ),
      padding: EdgeInsets.all(16.r),
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PaymentEachSection(
            firstText: "Тур",
            secondText: "${state.bookingInfos!.tourPrice.toString()} ₽",
          ),
          16.verticalSpace,
          PaymentEachSection(
            firstText: "Топливный сбор",
            secondText: "${state.bookingInfos!.fuelCharge.toString()} ₽",
          ),
          16.verticalSpace,
          PaymentEachSection(
            firstText: "Сервисный сбор",
            secondText: "${state.bookingInfos!.serviceCharge.toString()} ₽",
          ),
          16.verticalSpace,
          PaymentEachSection(
            firstText: "К оплате",
            secondText: state.tottalPrice == null ? "Уточняем" :
            "${state.tottalPrice.toString()} ₽",
            texcolor: AppColors.blueText,
          ),
        ],
      ),
    );
  }
}
