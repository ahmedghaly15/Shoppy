import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSizedBox extends StatelessWidget {
  final double? height, width;

  const CustomSizedBox({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height?.h, width: width?.w);
  }
}

final class MySizedBox {
  MySizedBox._();

  static const CustomSizedBox height24 = CustomSizedBox(height: 24);
  static const CustomSizedBox height18 = CustomSizedBox(height: 18);
}
