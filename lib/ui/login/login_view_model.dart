import 'dart:async';

import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revieuus/app/app.locator.dart';
import 'package:revieuus/app/app.router.dart';
import 'package:stacked/stacked.dart';

import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  // Navigation

  void navigateToHomeView() => _navigationService.replaceWith(Routes.homeView);

  // off keyboard

  void offKeyboard() async {
    await SystemChannels.textInput.invokeMethod<dynamic>('TextInput.hide');
  }


}
