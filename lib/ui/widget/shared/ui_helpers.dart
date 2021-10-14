// Horizontal Spacing
import 'package:flutter/material.dart';
import 'package:revieuus/ui/widget/shared/config.dart';

extension SizeExtension on num {
  double get h => SizeConfig.height(this.toDouble());

  double get w => SizeConfig.width(this.toDouble());

  double get sp => SizeConfig.textSize(this.toDouble());
}

// horizontal and vertical spacing

Widget horizontalSpaceTiny = SizedBox(width: 5.0.w);
Widget horizontalSpaceTiny_3 = SizedBox(width: 3.0.w);
Widget horizontalSpaceTiny7 = SizedBox(width: 7.0.w);
Widget horizontalSpaceSmall = SizedBox(width: 10.0.w);
Widget horizontalSpaceSmall_15 = SizedBox(width: 15.0.w);
Widget horizontalSpaceRegular = SizedBox(width: 18.0.w);
Widget horizontalSpaceMedium = SizedBox(width: 25.0.w);
Widget horizontalSpaceLarge = SizedBox(width: 50.0.w);

Widget verticalSpaceTiny = SizedBox(height: 5.0.h);
Widget verticalSpaceTiny_3 = SizedBox(height: 3.0.h);

Widget verticalSpaceTiny7 = SizedBox(height: 7.0.h);
Widget verticalSpaceSmall = SizedBox(height: 10.0.h);
Widget verticalSpaceSmall_13 = SizedBox(height: 13.0.h);
Widget verticalSpaceRegular = SizedBox(height: 20.0.h);
Widget verticalSpaceMedium = SizedBox(height: 25.0.h);
Widget verticalSpaceMedium_30 = SizedBox(height: 30.0.h);
Widget verticalSpaceLarge = SizedBox(height: 50.0.h);
Widget verticalSpaceMassive = SizedBox(height: 120.0.h);




// Screen Size helpers

// double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
// double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

// double screenHeightPercentage(BuildContext context, {double percentage = 1}) =>
//     screenHeight(context) * percentage;

// double screenWidthPercentage(BuildContext context, {double percentage = 1}) =>
//     screenWidth(context) * percentage;
