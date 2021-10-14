
import 'package:revieuus/core/service/home_service.dart';
import 'package:revieuus/ui/home/detail_view.dart';
import 'package:revieuus/ui/home/home_view.dart';
import 'package:revieuus/ui/login/login_view.dart';
import 'package:revieuus/ui/splash/splash_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView, initial: true),
    CupertinoRoute(page: LoginView),
    CupertinoRoute(page: DetailVIew),
    CupertinoRoute(page: HomeView),


 


    



    
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: HomeService),
    LazySingleton(classType: DialogService),
    


  ],
  logger: StackedLogger(),
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
