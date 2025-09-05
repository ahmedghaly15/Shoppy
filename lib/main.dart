import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show ProviderScope;
import 'package:flutter_screenutil/flutter_screenutil.dart' show ScreenUtil;

import 'riverpod_observer.dart';
import 'src/core/widgets/flutter_error_details_view.dart';
import 'src/shoppe_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  ErrorWidget.builder = (FlutterErrorDetails details) =>
      FlutterErrorDetailsView(details: details);
  runApp(
    ProviderScope(observers: [RiverpodObserver()], child: const ShoppeApp()),
  );
}
