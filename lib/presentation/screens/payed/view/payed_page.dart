import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hotels/presentation/custom_widgets/custom_button.dart';
import 'package:flutter_hotels/presentation/router/auto_route.dart';
import 'package:flutter_hotels/presentation/screens/payed/widget/widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class PayedPage extends StatelessWidget {
  const PayedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: const PayedPageAppbar(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            const BodyTile(),
            Container(
              margin: EdgeInsets.only(bottom: 28.w),
              child: CustomButton(
                onPressed: () {
                  context.router.push(const HotelRoute());
                },
                width: double.maxFinite,
                text: "Супер!",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
