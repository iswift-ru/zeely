// ignore: implementation_imports
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zeely/clients/presentation/widgets/no_request.dart';
import 'package:zeely/infrastructure/helpers.dart';
import 'package:zeely/clients/presentation/widgets/card_client.dart';
import 'package:zeely/translations/locale_keys.g.dart';

import 'incoming_request.dart';
import 'widgets/button_base.dart';

class ClientsList extends StatefulWidget {
  const ClientsList({Key? key}) : super(key: key);

  @override
  State<ClientsList> createState() => _ClientsListState();
}

class _ClientsListState extends State<ClientsList> {
  final _isActive = [
    true,
    false,
    false,
    false,
  ];

  final _titleButtons = [
    (LocaleKeys.all).tr(),
    (LocaleKeys.injob).tr(),
    (LocaleKeys.success).tr(),
    (LocaleKeys.archive).tr(),
  ];

  Widget barWidget() => Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 23),
        child: Row(
          children: [
            SvgPicture.asset(IconHelpers.upload),
            const Spacer(),
            const Text(LocaleKeys.marsel, style: TextStyle(fontSize: 13)).tr(),
            const SizedBox(width: 10),
            SvgPicture.asset(IconHelpers.arrow),
            const Spacer(),
            SvgPicture.asset(IconHelpers.kompas),
          ],
        ),
      );

  Widget cardClient() => Padding(
        padding: const EdgeInsets.only(top: 9),
        // TODO: Не стал выносить это в локализацию, т.к. я так понимаю эти данные будут приходить с сервера
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => IncomingRequest())),
              child: const CardClient(
                title: 'Александр Емельяненко',
                email: 'alexander.emeln9nenko@yandex.ru',
                time: '12:23',
                phone: '+38 066 872 84 94',
                inwork: false,
                paper: false,
                textBold: true,
                backgraund: true,
                point: true,
              ),
            ),
            const SizedBox(height: 1),
            const CardClient(
              title: 'Станислав',
              email: 'stt.work@gmail.com',
              time: '12:23',
              phone: '+38 066 872 84 94',
              inwork: false,
              paper: false,
              textBold: true,
              backgraund: true,
              point: true,
            ),
            const SizedBox(height: 1),
            const CardClient(
              title: 'Константин  Литвиненко',
              email: 'alexander.emeln9nenko@yandex.ru',
              time: 'Вчера',
              phone: '+38 066 872 84 94',
              inwork: true,
              paper: true,
              textBold: false,
              backgraund: false,
              point: false,
            ),
            const SizedBox(height: 1),
            const CardClient(
              title: 'Константин Литвиненко',
              email: 'alexander.emeln9nenko@yandex.ru',
              time: '22/10',
              phone: '+38 066 872 84 94',
              inwork: false,
              paper: false,
              textBold: false,
              backgraund: false,
              point: false,
            ),
          ],
        ),
      );

  Widget buttonsList() => SizedBox(
        height: 33,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: _titleButtons.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 9),
                    child: ButtonBase(
                      title: _titleButtons[index],
                      onPressed: () {},
                      // TODO: Не стал делать управление состоянием на setState,
                      // счетаю для этого нужно использовать стейтменеджмент какой-нибудь
                      isActive: _isActive[index],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: GradientHelpers.gradient,
          ),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: BorderRadiusHelpers.borderRadius20,
                    topRight: BorderRadiusHelpers.borderRadius20,
                  ),
                ),
                child: Column(
                  children: [
                    barWidget(),
                    const SizedBox(height: 30),
                    buttonsList(),
                    cardClient(),
                    // const NoRequest()
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
