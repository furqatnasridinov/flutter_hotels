import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hotels/presentation/custom_widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThirdScreenAppbar extends StatelessWidget {
  const ThirdScreenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      title: CustomText(
        text: "Бронирование",
        fontSize: 18.sp,
      ),
      leading: Padding(
        padding: EdgeInsets.only(left: 12.w),
        child: IconButton(
          onPressed: () => context.router.pop(),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
