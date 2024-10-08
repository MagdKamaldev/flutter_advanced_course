import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/theming/colors.dart';
import 'package:flutter_advanced_course/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final Widget? suffixIcon;
  final bool? isObscureText;
  final Color ? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;

  const AppTextFormField(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hintText,
      this.suffixIcon,
      this.isObscureText, this.backgroundColor, this.controller, required this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value){
       return validator(value);
      },
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        focusedBorder: focusedBorder ?? OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide:
                const BorderSide(color: ColorManager.mainBlue, width: 1.3)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide:
              const BorderSide(color: ColorManager.lighterGrey, width: 1.3),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide:
              const BorderSide(color: Colors.red, width: 1.3),
        ),
         focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide:
              const BorderSide(color: Colors.red, width: 1.3),
        ),
        hintStyle: hintStyle ?? TextStyles.font14LightGreyRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
          fillColor: backgroundColor ?? ColorManager.moreLightGrey,
      ),
      obscureText: isObscureText ?? false,
      style: TextStyles.font14DarkBlueMedium,
    );
  }
}
