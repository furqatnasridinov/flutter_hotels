import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hotels/application/booking/booking_provider.dart';
import 'package:flutter_hotels/presentation/custom_widgets/custom_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/widget.dart';

@RoutePage()
class BookingPage extends ConsumerStatefulWidget {
  const BookingPage({super.key});

  @override
  ConsumerState<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends ConsumerState<BookingPage> {
  bool? isExpanded = false;
  ExpansionTileController expansionTileController = ExpansionTileController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ref.read(bookingProvider.notifier).getBookingInfo(context);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(bookingProvider);
    final event = ref.watch(bookingProvider.notifier);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: state.bookingInfos == null
            ? const SizedBox()
            : const ThirdScreenAppbar(),
      ),
      body: state.bookingInfos == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  8.verticalSpace,
                  BodyFirstSection(state: state),
                  8.verticalSpace,
                  BodySecondSection(
                    state: state,
                  ),
                  8.verticalSpace,
                  const CustomerInfo(),
                  8.verticalSpace,
                  FirstTourist(
                    state: state,
                    event: event,
                  ),
                  8.verticalSpace,
                  SecondTourist(
                    state: state,
                    event: event,
                  ),
                  8.verticalSpace,
                  const AddTourist(),
                  8.verticalSpace,
                  PaymentSection(
                    event: event,
                    state: state,
                  ),
                  10.verticalSpace,
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
                      text: "Оплатить ${state.tottalPrice} ₽",
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
