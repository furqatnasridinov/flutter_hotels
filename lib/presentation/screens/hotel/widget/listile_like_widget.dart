// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_hotels/infrastructure/services/app_colors.dart';
import 'package:flutter_hotels/presentation/custom_widgets/custom_text.dart';

// ignore: must_be_immutable
class ListileLikeWidget extends StatelessWidget {
  void Function()? onTap;
  final String? title;
  final String? subTitle;
  final Widget leading;

   ListileLikeWidget({
    Key? key,
    this.onTap,
    required this.title,
    required this.subTitle,
    required this.leading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: CustomText(
        text: title,
        fontSize: 16.sp,
      ),
      subtitle: CustomText(
        text: subTitle,
        fontSize: 14.sp,
        textColor: AppColors.greyText,
      ),
      leading: Padding(
        padding: EdgeInsets.only(top: 7.w),
        child: SizedBox(
          width: 24.w,
          height: 24.h,
          child: leading,
        ),
      ),
      trailing: SizedBox(
        width: 24.w,
        height: 24.h,
        child: Padding(
          padding: EdgeInsets.only(left: 15.w),
          child: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
