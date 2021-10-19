// ignore: implementation_imports
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zeely/infrastructure/colors.dart';
import 'package:zeely/infrastructure/helpers.dart';
import 'package:zeely/translations/locale_keys.g.dart';

import 'clients_list.dart';
import 'widgets/custom_app_bar.dart';

class ClientsCatalog extends StatefulWidget {
  const ClientsCatalog({Key? key}) : super(key: key);

  @override
  State<ClientsCatalog> createState() => _ClientsCatalogState();
}

class _ClientsCatalogState extends State<ClientsCatalog> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Мой сайт',
      style: optionStyle,
    ),
    Text(
      'Продвижение',
      style: optionStyle,
    ),
    ClientsList(),
    Text(
      'Ассистент',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: (LocaleKeys.clients).tr()),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        selectedFontSize: 10,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400),
        unselectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(IconHelpers.home),
            label: (LocaleKeys.mysite).tr(),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(IconHelpers.seo),
            label: (LocaleKeys.seo).tr(),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(IconHelpers.clients),
            label: (LocaleKeys.clients).tr(),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(IconHelpers.assystent),
            label: (LocaleKeys.assistent).tr(),
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: colorBlack,
        onTap: _onItemTapped,
      ),
    );
  }
}
