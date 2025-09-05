import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:shoppy/src/core/helpers/extensions.dart';

import '../theming/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.text,
    this.child,
    this.leading,
    this.onPressed,
    this.expands,
    this.size,
    this.decoration,
  });

  final String? text;
  final Widget? child, leading;
  final VoidCallback? onPressed;
  final bool? expands;
  final ShadButtonSize? size;
  final ShadDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return ShadButton(
      size: size ?? ShadButtonSize.lg,
      decoration:
          decoration ??
          ShadDecoration(
            border: ShadBorder.all(radius: BorderRadius.circular(16.r)),
          ),
      onPressed: onPressed,
      leading: leading,
      expands: expands,
      backgroundColor: AppColors.primaryColor,
      child:
          child ??
          Text(
            text!,
            style: context.shadTextTheme.p.copyWith(
              color: AppColors.colorF3F3F3,
            ),
          ),
    );
  }
}
