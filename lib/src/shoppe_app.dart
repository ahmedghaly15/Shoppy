import 'package:auto_route/auto_route.dart' show AutoRouteObserver;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show ScreenUtilInit;
import 'package:shadcn_ui/shadcn_ui.dart' show ShadApp;

import '../app_routes_observer.dart';
import 'core/router/app_router.dart';
import 'core/utils/app_strings.dart';

class ShoppeApp extends StatelessWidget {
  const ShoppeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => ShadApp.custom(
        appBuilder: (context) => Consumer(
          builder: (_, WidgetRef ref, child) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: AppStrings.appName,
            routerConfig: ref
                .read(autoRouteProvider)
                .config(
                  navigatorObservers: () => [
                    AppRoutesObserver(),
                    AutoRouteObserver(),
                  ],
                ),
          ),
        ),
      ),
    );
  }
}
