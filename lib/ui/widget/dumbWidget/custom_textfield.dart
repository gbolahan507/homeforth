

import 'package:flutter/material.dart';
import 'package:revieuus/export.dart';

class CustomTextField extends StatelessWidget {
  final prefixIcon;
  final suffixIcon;
  final validator;
  final onSaved;
  final hintText;
  final textInputType;
  final textInputAction;
  final textAlign;
  final onChanged;
  final controller;
  final bool? readOnly;
  final obscureText;
  final obscuringCharacter;
  final bool? checklabelText;
  final String? labelText;

  CustomTextField({
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.onSaved,
    this.hintText,
    this.textInputAction,
    this.textInputType,
    this.textAlign,
    this.onChanged,
    this.controller,
    this.readOnly,
    this.obscureText = false,
    this.obscuringCharacter,
    this.checklabelText = false,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        checklabelText == true
            ? Column(
                children: [
                  regularPoppinsText(context,
                      text: labelText!,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                  verticalSpaceTiny7,
                ],
              )
            : SizedBox(),
        TextFormField(
          cursorColor: AppColors.black.withOpacity(0.4),
          cursorWidth: 1.w,
          cursorHeight: 15.h,
          maxLines: 1,
          textInputAction: textInputAction,
          style: GoogleFonts.poppins(
            color: AppColors.black,
            fontWeight: FontWeight.w500,
            fontSize: 15.sp,
            letterSpacing: 0.4,
          ),
          readOnly: readOnly!,
          decoration: InputDecoration(
            counterText: '',
            contentPadding: EdgeInsets.symmetric(
              vertical: 15.h,
              horizontal: 15.w,
            ),
            hintText: hintText,
            hintStyle: GoogleFonts.poppins(
              color: AppColors.black,
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: AppColors.white,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.textFieldborderColor),
              borderRadius: BorderRadius.circular(4.h),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.textFieldborderColor),
              borderRadius: BorderRadius.circular(4.h),
            ),
            errorBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: AppColors.textFieldborderColor, width: 0.5),
              borderRadius: BorderRadius.circular(4.h),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.textFieldborderColor,
              ),
              borderRadius: BorderRadius.circular(4.h),
            ),
          ),
          obscureText: obscureText,
          obscuringCharacter: '●',
          controller: controller,
          textAlign: textAlign ?? TextAlign.start,
          keyboardType: textInputType,
          onFieldSubmitted: onSaved,
          onSaved: onSaved,
          validator: validator,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
