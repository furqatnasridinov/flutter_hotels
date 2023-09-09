import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../application/hotel/hotel_provider.dart';
import '../../../custom_widgets/custom_widgets.dart';
import '../widget/widget.dart';
@RoutePage()
class HotelPage extends ConsumerStatefulWidget {
  const HotelPage({super.key});

  @override
  ConsumerState<HotelPage> createState() => _HotelPageState();
}

class _HotelPageState extends ConsumerState<HotelPage> {

  @override
  void initState() {
    ref.read(hotelProvider.notifier).getHotel(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(hotelProvider);
    final event = ref.watch(hotelProvider.notifier);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: state.hotel == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  FirstSection(
                    state: state,
                    event: event,
                  ),
                  8.verticalSpace,
                   SecondSection(event: event, state: state),
                  12.verticalSpace,
                  // button
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50.r),
                          bottomRight: Radius.circular(50.r)),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16.w).copyWith(
                      top: 12.h,
                      bottom: 28.h,
                    ),
                    child: CustomButton(
                      onPressed: () {},
                      width: double.maxFinite,
                      text: "К выбору номера",
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
