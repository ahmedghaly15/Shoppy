import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show ScreenUtilInit;
import 'package:shadcn_ui/shadcn_ui.dart' show ShadApp;

import 'core/utils/app_strings.dart';

class ShoppeApp extends StatelessWidget {
  const ShoppeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) => ShadApp.custom(
        appBuilder: (context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppStrings.appName,
          home: Scaffold(
            body: Center(
              child: Text(
                'Welcome',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
