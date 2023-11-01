import 'package:accessories_store/core/global/routes/route_generator.dart';
import 'package:accessories_store/core/global/theme/app_light_theme.dart';
import 'package:accessories_store/core/utils/app_string.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: AppString.appName,
          debugShowCheckedModeBanner: false,
          theme: getThemeDataLight(),
          //home: const LayoutScreen(),
          onGenerateRoute: ((settings) => RouteGenerator.getRoutes(settings)),
          //initialRoute: Routes.layoutRoute,
        );
      },
    );
  }
}
