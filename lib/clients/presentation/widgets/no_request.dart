import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zeely/infrastructure/helpers.dart';

class NoRequest extends StatelessWidget {
  const NoRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 120,
        ),
        SvgPicture.asset(IconHelpers.green_clients),
        const SizedBox(
          height: 18,
        ),
        const Text(
          'Заявок пока нет',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 19,
        ),
        const Text(
          'Запусти онлайн-продвижение, чтобы',
          style: TextStyle(fontSize: 13),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 13,
        ),
        const Text(
          'получить первых клиентов',
          style: TextStyle(fontSize: 13),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 22,
        ),
        const Text(
          'Активировать продвижение',
          style: TextStyle(fontSize: 13, color: Color(0xff178FE5)),
        ),
      ],
    );
  }
}
