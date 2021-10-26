import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key, required this.text, required this.date, required this.time}) : super(key: key);

  final String text;
  final String date;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xffF6F7FB)),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 13, color: Color(0xff172026), height: 1.2),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                date,
                style: const TextStyle(
                  fontSize: 10,
                  color: Color(0xff8FA4B2),
                ),
              ),
              Text(
                time,
                style: const TextStyle(
                  fontSize: 10,
                  color: Color(0xff8FA4B2),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
