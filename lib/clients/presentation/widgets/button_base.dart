import 'package:flutter/material.dart';
import 'package:zeely/infrastructure/colors.dart';

class ButtonBase extends StatelessWidget {
  const ButtonBase({Key? key, required this.title, required this.onPressed, this.isActive = false}) : super(key: key);
  final String title;
  final VoidCallback onPressed;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: isActive ? darkPurple : greyLight,
        side: BorderSide(
          color: isActive ? darkPurple : greyLight,
        ),
      ),
      child: Text(
        title,
        style: TextStyle(color: isActive ? colorWhite : greyText, fontSize: 12),
      ),
    );
  }
}
