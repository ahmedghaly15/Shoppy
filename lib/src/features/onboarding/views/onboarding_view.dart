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
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 21.h,
                    horizontal: 26.w,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                ),
                MySizedBox.height24,
                Text(AppStrings.appName, style: context.shadTextTheme.h3),
                MySizedBox.height18,
                FittedBox(
                  child: Text(
                    AppStrings.onboardingDescription,
                    style: context.shadTextTheme.h4,
                  ),
                ),
                const Spacer(),
                PrimaryButton(
                  text: AppStrings.letsGetStarted,
                  onPressed: () {},
                ),
                MySizedBox.height18,
                TextButton.icon(
                  onPressed: () {},
                  label: CircleAvatar(
                    radius: 15.r,
                    backgroundColor: AppColors.primaryColor,
                    child: const Icon(
                      LucideIcons.arrowRight,
                      color: Colors.white,
                    ),
                  ),
                  icon: Text(
                    AppStrings.alreadyHaveAnAccount,
                    style: context.shadTextTheme.small,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
