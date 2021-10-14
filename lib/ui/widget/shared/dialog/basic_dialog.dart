import 'package:flutter/material.dart';
import 'package:revieuus/export.dart';
import 'package:stacked_services/stacked_services.dart';

class BasicDialog extends StatelessWidget {
  final DialogRequest? request;
  final Function(DialogResponse) completer;
  const BasicDialog({Key? key, this.request, required this.completer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: AppColors.white,
        child: Container(
          height: 500,
          width: double.infinity,
          child: Column(
            children: [
              regularPoppinsText(context, text: request!.title),
              regularPoppinsText(context, text: request!.description),
            ],
          ),
        ));
  }
}