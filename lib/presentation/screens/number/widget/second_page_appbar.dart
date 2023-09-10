import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../custom_widgets/custom_widgets.dart';

class SecondPageAppbar extends StatelessWidget {
  const SecondPageAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: CustomText(
          text: "Steigenberger Makadi",
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