import 'package:flutter/material.dart';
import 'package:flutter_hotels/infrastructure/services/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextfield extends StatelessWidget {
  String? initialValue;
  String? labelText;
  //TextEditingController? controller;
  CustomTextfield({
    this.initialValue,
    this.labelText,
   // this.controller,
});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.r),
      child: SizedBox(
        height: 52.h,
        child: TextFormField(
          initialValue: initialValue,
          //controller: controller,
          decoration: InputDecoration(
            labelText: labelText,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w400,
              color: AppColors.greyText,
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
            border: const UnderlineInputBorder(),
            enabledBorder:
                const UnderlineInputBorder(borderSide: BorderSide.none),
            focusedBorder:
                const UnderlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
      ),
    );
  }
}
