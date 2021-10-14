import 'package:flutter/cupertino.dart';
import 'package:revieuus/core/enum/dialog_type.dart';
import 'package:revieuus/ui/widget/shared/dialog/basic_dialog.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:revieuus/app/app.locator.dart';



void setUpDialogUi() {
  final dialogService = locator<DialogService>();

  final builders = {
    DialogType.basic: (BuildContext context, DialogRequest request,
            Function(DialogResponse) completer) =>
        BasicDialog(request: request, completer: completer)
  };
  dialogService.registerCustomDialogBuilders(builders);
}
