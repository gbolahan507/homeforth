import 'package:revieuus/app/app.locator.dart';
import 'package:revieuus/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  Future<void> isLoggedIn() async {
    // final LoginData loginData = AppCache.getUser;
    final loginData = true;

    Future<void>.delayed(const Duration(seconds: 2), () {
      if (loginData == true) {
        _navigationService.navigateTo(Routes.loginView);
      } else {
        _navigationService.navigateTo(Routes.loginView);
      }
    });
  }
}
