import 'package:auto_route/auto_route.dart' show RoutePage;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:shoppy/src/core/helpers/extensions.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/assets.dart';
import '../../../core/widgets/my_sized_box.dart';
import '../../../core/widgets/primary_button.dart';

@RoutePage()
class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const Spacer(),
                  _shadowCircleAppIcon(),
                  MySizedBox.height24,
                  Text(AppStrings.appName, style: context.shadTextTheme.h1),
                  MySizedBox.height18,
                  _onboardingDescriptionText(context),
                  const Spacer(),
                  PrimaryButton(
                    expands: true,
                    text: AppStrings.letsGetStarted,
                    onPressed: () {},
                  ),
                  MySizedBox.height18,
                  _letsGetStartedTextButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextButton _letsGetStartedTextButton(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      label: CircleAvatar(
        radius: 15.r,
        backgroundColor: AppColors.primaryColor,
        child: const Icon(LucideIcons.arrowRight, color: Colors.white),
      ),
      icon: Text(
        AppStrings.alreadyHaveAnAccount,
        style: context.shadTextTheme.small,
      ),
    );
  }

  Padding _onboardingDescriptionText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 43.w),
      child: FittedBox(
        child: Text(
          AppStrings.onboardingDescription,
          style: context.shadTextTheme.large.copyWith(
            color: AppColors.color202020,
          ),
        ),
      ),
    );
  }

  Container _shadowCircleAppIcon() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 21.h, horizontal: 26.w),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 3.h),
            blurRadius: 8.r,
            spreadRadius: 0,
            color: Colors.black.withAlpha(40),
          ),
        ],
      ),
      child: Image.asset(Assets.appIcon),
    );
  }
}
