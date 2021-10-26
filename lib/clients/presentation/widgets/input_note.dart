import 'package:flutter/material.dart';

class InputNote extends StatefulWidget {
  const InputNote({Key? key}) : super(key: key);

  @override
  State<InputNote> createState() => _InputNoteState();
}

class _InputNoteState extends State<InputNote> {
  TextEditingController? myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (String text) {},
      maxLines: 3,
      controller: myController,
      decoration: const InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffF6F7FB)),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffF6F7FB)),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffF6F7FB)),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      style: const TextStyle(fontSize: 13.0),
      cursorColor: const Color(0xff8FA4B2),
    );
  }
}
