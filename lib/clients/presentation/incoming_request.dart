import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zeely/infrastructure/helpers.dart';

import 'widgets/card_client_incoming_request.dart';
import 'widgets/input_note.dart';
import 'widgets/note_item.dart';
import 'widgets/status_button_incoming_request.dart';

class IncomingRequest extends StatelessWidget {
  const IncomingRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 24,
        leading: Transform.translate(
          offset: const Offset(16, 0),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: SvgPicture.asset(
              IconHelpers.back_arrow,
              height: 24,
              width: 24,
            ),
          ),
        ),
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Входящая заявка',
          style: TextStyle(color: Color(0xff1C1C1C), fontSize: 17),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: SvgPicture.asset(IconHelpers.phone_icon),
          )
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 15),
            child: ListView(
              children: [
                const CardClientIncomingRequest(
                  title: 'Константин  Литвиненко',
                  email: 'alexander.emeln9nenko@yandex.ru',
                  time: 'Вчера',
                  phone: '+38 066 872 84 94',
                  inwork: true,
                  paper: true,
                  textBold: true,
                  backgraund: false,
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    StatusButtonIncomingRequest(
                      icon: IconHelpers.inwork,
                      title: 'В работе',
                      colorText: Colors.white,
                      colorButton: Color(0xff8962D9),
                    ),
                    StatusButtonIncomingRequest(
                      icon: IconHelpers.ok,
                      title: 'Успешно',
                      colorButton: Colors.white,
                      colorText: Color(
                        0xff1DBF53,
                      ),
                    ),
                    StatusButtonIncomingRequest(
                      icon: IconHelpers.folder,
                      title: 'В архив',
                      colorButton: Colors.white,
                      colorText: Color(
                        0xff172026,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                const Text(
                  'Заметки',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff172026),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                const NoteItem(
                  date: 'Сегодня',
                  text: 'Клиент не выходит на связь. Нужно набрать завтра в это же время',
                  time: '13:04',
                ),
                const SizedBox(
                  height: 15,
                ),
                const NoteItem(
                  date: 'Сегодня',
                  text: 'Вышел на связь и договорились о встрече. Сказал, что доволен звонком',
                  time: '13:04',
                ),
                const SizedBox(
                  height: 15,
                ),
                const InputNote(),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
          Align(
            heightFactor: 37,
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    IconHelpers.paper,
                    height: 18,
                    width: 18,
                    color: const Color(0xffF2973D),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  const Text(
                    'Добавить заметку',
                    style: TextStyle(color: Color(0xffF2973D), fontSize: 13),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
