
import 'package:flutter/material.dart';
import 'package:revieuus/export.dart';

class HeadingText extends StatelessWidget {
  final String? subtitle;
  final String? title;
  final bool? checkSubtiTle;

  const HeadingText({
    Key? key,
    this.subtitle,
    this.checkSubtiTle = true,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          verticalSpaceSmall_13,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpaceTiny,
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.black,
                      size: 25,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  regularPoppinsText(context,
                      text: title ?? 'Browse',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black),
                  checkSubtiTle!
                      ? regularPoppinsText(
                          context,
                          text: subtitle ?? 'Search companies by category',
                          color: AppColors.black,
                          // fontWeight: FontWeight.w600,
                        )
                      : SizedBox(),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}