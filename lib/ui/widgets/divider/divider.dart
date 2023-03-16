import 'package:flutter/material.dart';
import 'package:fruits_application/style/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 1,
      child: DecoratedBox(
        decoration: BoxDecoration(color: ThemeColors.customDivider),
      ),
    );
  }
}
