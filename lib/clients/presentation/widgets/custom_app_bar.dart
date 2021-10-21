import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zeely/infrastructure/helpers.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(66);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      actions: [
        IconButton(
          icon: SvgPicture.asset(IconHelpers.lightning),
          onPressed: () {},
        ),
        const SizedBox(width: 15),
        Transform.translate(
          offset: const Offset(-10, 0),
          child: IconButton(
            icon: SvgPicture.asset(
              IconHelpers.profile,
            ),
            onPressed: () {},
          ),
        ),
      ],
      centerTitle: false,
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
      flexibleSpace: Container(
        decoration: const BoxDecoration(gradient: GradientHelpers.gradient),
      ),
    );
  }
}
