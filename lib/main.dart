import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'locator.dart';
import 'routes.dart' as routes;
import 'pages/splash_screen.dart';
import 'services/navigation_service.dart';
import 'styles/colors.dart';
import 'styles/themes.dart';

void main() {
  initLocator();
  runApp(const CineTimeApp());
}

class CineTimeApp extends StatelessWidget {
  const CineTimeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //   systemNavigationBarColor: Colors.white,
    //   statusBarColor: AppColors.primaryColor,
    // ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppTheme.appName,
      theme: AppTheme.lightTheme,
      navigatorKey: sl<NavigationService>().navigatorKey,
      onGenerateRoute: routes.onGenerate,
      home: const SplashScreen(),
    );
  }
}
