import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hotels/presentation/custom_widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PayedPageAppbar extends StatelessWidget {
  const PayedPageAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.grey.shade200,
      title: CustomText(
        text: "Заказ оплачен",
        fontSize: 18.sp,
      ),
      leading: Padding(
        padding: EdgeInsets.only(left: 12.w),
        child: IconButton(
          onPressed: () => context.router.pop(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
