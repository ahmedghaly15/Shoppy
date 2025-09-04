import 'package:animate_do/animate_do.dart' show ElasticIn;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppy/src/core/helpers/extensions.dart';

import '../utils/app_strings.dart';
import '../utils/assets.dart';

class FlutterErrorDetailsView extends StatelessWidget {
  const FlutterErrorDetailsView({super.key, required this.details});

  final FlutterErrorDetails details;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          spacing: 16.h,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Image.asset(Assets.imagesShyError, fit: BoxFit.cover),
            ),
            ElasticIn(
              child: Text(
                AppStrings.defaultError,
                style: context.shadTextTheme.h4,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
