import 'package:flutter/material.dart';
import 'package:revieuus/export.dart';


Widget customButton(
  BuildContext context, {
  final text,
  final buttonColor,
  final textColor,
  final function,
  final borderColor,
  final fontSize,
  final horiMargin,
  final width,
  final bool busy = false,
  final bool showicon = false,
}) {
  SizeConfig.init(context);
  return InkWell(
    onTap: function,
    child: Container(
      width: width,
      alignment: Alignment.center,
      padding:
          EdgeInsets.symmetric(vertical: 13.h, horizontal: horiMargin ?? 0),
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(53.h),
          border: Border.all(color: borderColor)),
      child: Center(
        child: busy
            ? SizedBox(
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
                height: 20.h,
                width: 20.h,
              )
            : Row(
                children: [
                  Spacer(),
                  regularPoppinsText(
                    context,
                    text: text,
                    color: textColor,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w500,
                  ),
                  Spacer(),
                  showicon
                      ? Icon(
                          Icons.arrow_forward,
                          color: AppColors.white,
                        )
                      : SizedBox(),
                ],
              ),
      ),
    ),
  );
}

Widget fireBaseAuthButton(
  BuildContext context, {
  final text,
  final buttonColor,
  final textColor,
  final function,
  final borderColor,
  final fontSize,
  final horiMargin,
  final String? image,
  final width,
  final bool busy = false,
  final bool showicon = false,
}) {
  SizeConfig.init(context);
  return InkWell(
    onTap: function,
    child: Container(
      width: width,
      alignment: Alignment.center,
      padding:
          EdgeInsets.symmetric(vertical: 13.h, horizontal: horiMargin ?? 0),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(53.h),
          border: Border.all(color: AppColors.WhiteborderColor)),
      child: Center(
        child: busy
            ? SizedBox(
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
                height: 20.h,
                width: 20.h,
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(image!),
                  horizontalSpaceSmall,
                  regularPoppinsText(
                    context,
                    text: text,
                    color: AppColors.textblackColor2,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
      ),
    ),
  );
}
