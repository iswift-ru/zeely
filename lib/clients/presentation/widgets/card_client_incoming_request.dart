// ignore: implementation_imports
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zeely/infrastructure/colors.dart';
import 'package:zeely/infrastructure/helpers.dart';
import 'package:zeely/translations/locale_keys.g.dart';

class CardClientIncomingRequest extends StatelessWidget {
  const CardClientIncomingRequest({
    Key? key,
    required this.title,
    required this.email,
    required this.time,
    required this.phone,
    required this.paper,
    required this.inwork,
    required this.textBold,
    required this.backgraund,
  }) : super(key: key);

  final String title;
  final String email;
  final String time;
  final String phone;
  final bool paper;
  final bool inwork;
  final bool textBold;
  final bool backgraund;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xffF6F7FB)),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        height: 142,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    IconHelpers.kompas,
                    height: 15,
                    width: 15,
                  ),
                  const SizedBox(
                    width: 11,
                  ),
                  const Text(
                    'marsel.zeely.me',
                    style: TextStyle(color: Color(0xff178FE5), fontSize: 12),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 14, color: colorBlack, fontWeight: textBold ? FontWeight.bold : null),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(IconHelpers.message),
                  const SizedBox(width: 12),
                  Text(
                    email,
                    style: const TextStyle(fontSize: 13, color: colorBlack),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(IconHelpers.phone),
                  const SizedBox(width: 12),
                  Text(
                    phone,
                    style: const TextStyle(fontSize: 13, color: colorBlack),
                  ),
                  const Spacer(),
                  const Text(
                    '12:23',
                    style: TextStyle(color: Color(0xff8FA4B2), fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
