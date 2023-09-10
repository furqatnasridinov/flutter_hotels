import 'package:flutter/material.dart';
import 'package:flutter_hotels/application/booking/booking_state.dart';
import 'package:flutter_hotels/presentation/screens/booking/widget/texts_in_row.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodySecondSection extends StatelessWidget {
  const BodySecondSection({super.key, required this.state});
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
          const TextsInRow(
            firstString: "Вылет из",
            secondScreen: "Санкт-Петербург",
          ),
          16.verticalSpace,
          TextsInRow(
            firstString: "Страна, город",
            secondScreen: state.bookingInfos?.arrivalCountry ?? "",
          ),
          16.verticalSpace,
          TextsInRow(
            firstString: "Даты",
            secondScreen: "${state.bookingInfos?.tourDateStart}-${state.bookingInfos?.tourDateStop}"
          ),
          16.verticalSpace,
          TextsInRow(
            firstString: "Кол-во ночей",
            secondScreen: "${state.bookingInfos!.numberOfNights} ночей"
          ),
          16.verticalSpace,
          const TextsInRow(
            firstString: "Отель",
            secondScreen: "Steigenberger Makadi",
          ),
          16.verticalSpace,
          const TextsInRow(
            firstString: "Номер",
            secondScreen: "Стандартный с видом на бассейн или сад",
          ),
          16.verticalSpace,
          TextsInRow(
            firstString: "Питание",
            secondScreen:  state.bookingInfos?.nutrition ?? "",
          ),
          16.verticalSpace,
        ],
      ),
    );
  }
}
