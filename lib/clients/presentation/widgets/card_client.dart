// ignore: implementation_imports
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zeely/infrastructure/colors.dart';
import 'package:zeely/infrastructure/helpers.dart';
import 'package:zeely/translations/locale_keys.g.dart';

class CardClient extends StatelessWidget {
  const CardClient({Key? key, required this.title, required this.email, required this.time, required this.phone}) : super(key: key);

  final String title;
  final String email;
  final String time;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionExtentRatio: 0.20,
      actionPane: const SlidableDrawerActionPane(),
      child: Container(
          height: 110,
          color: greyLight,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(IconHelpers.point),
                    const SizedBox(width: 12),
                    Text(
                      title,
                      style: const TextStyle(fontSize: 14, color: colorBlack, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Text(time),
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
                  ],
                ),
              ],
            ),
          )),
      secondaryActions: <Widget>[
        SlideAction(
          color: colorGreen,
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(IconHelpers.ok),
              const SizedBox(height: 17),
              const Text(
                LocaleKeys.success,
                style: TextStyle(color: colorWhite),
              ).tr(),
            ],
          ),
        ),
        SlideAction(
          color: colorAppBarTwo,
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(IconHelpers.portfel),
              const SizedBox(height: 17),
              const Text(
                LocaleKeys.injob,
                style: TextStyle(color: colorWhite),
              ).tr(),
            ],
          ),
        ),
        SlideAction(
          color: colorBlack,
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(IconHelpers.folder),
              const SizedBox(height: 17),
              const Text(
                LocaleKeys.archive,
                style: TextStyle(color: colorWhite),
              ).tr(),
            ],
          ),
        ),
      ],
    );
  }
}
