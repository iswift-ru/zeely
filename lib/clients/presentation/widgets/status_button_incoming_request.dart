import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StatusButtonIncomingRequest extends StatelessWidget {
  const StatusButtonIncomingRequest({Key? key, required this.icon, required this.title, required this.colorText, required this.colorButton}) : super(key: key);

  final String icon;
  final String title;
  final Color? colorButton;
  final Color colorText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
        color: colorButton,
        border: Border.all(color: const Color(0xffF6F7FB)),
        borderRadius: const BorderRadius.all(
          Radius.circular(7),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              height: 15,
              width: 15,
              color: colorText,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 10, color: colorText),
            ),
          ],
        ),
      ),
    );
  }
}
