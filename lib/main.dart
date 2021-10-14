import 'package:flutter/material.dart';
import 'package:revieuus/app/app.locator.dart';
import 'package:revieuus/app/app.router.dart';
import 'package:revieuus/ui/home/home_view.dart';
import 'package:revieuus/ui/widget/shared/setup_dialog.dart';
import 'package:stacked_services/stacked_services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  setUpDialogUi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
           navigatorKey: StackedService.navigatorKey,
        onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
