import 'package:flutter/material.dart';
import 'package:fruits_application/style/colors.dart';

class HomePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  HomePageAppBar({
    super.key,
    this.title,
    this.height = 60,
  }) : preferredSize = Size.fromHeight(height);

  final String? title;
  @override
  final Size preferredSize;
  final double height;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title ?? ''),
      centerTitle: true,
      backgroundColor: ThemeColors.homePageAppbar,
    );
  }
}
