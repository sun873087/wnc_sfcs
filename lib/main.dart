import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/routes/app_pages.dart';
import 'common/theme/app_theme.dart';
import 'page/navigation/index.dart';

void main() {
  runApp(WncSfcsApp());
}


class WncSfcsApp extends StatelessWidget {
  const WncSfcsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'WNC SFCS APP',
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: AppTheme.textTheme,
          platform: TargetPlatform.iOS,
        ),
        defaultTransition: Transition.fade,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        home: Navigation(),        
    );
  }
}