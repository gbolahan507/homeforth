import 'package:flutter/material.dart';
import 'package:revieuus/export.dart';
import 'package:revieuus/ui/splash/startup_viewmodel.dart';
import 'package:revieuus/ui/widget/dumbWidget/image_widget.dart';
import 'package:revieuus/ui/widget/shared/images.dart';
import 'package:stacked/stacked.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return ViewModelBuilder<SplashViewModel>.reactive(
      onModelReady: (model) => model.isLoggedIn(),
      builder: (_, __, ___) => Scaffold(
        backgroundColor: AppColors.purpleColor,
        body: Center(
          child: Container(
              height: 500,
              width: 200,
              child: Center(child: ImageWidget(image: Images.home))),
        ),
      ),
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}
