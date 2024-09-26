import 'package:flutter/material.dart';
import 'package:notesapp/views/widget/const.dart';

class Customtextfiles extends StatelessWidget {
  final String hitText;
  final int? maxLines;
  const Customtextfiles({super.key, required this.hitText, this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: mainColor,
      decoration: InputDecoration(
          hintText: hitText,
          border: buildeBorder(),
          enabledBorder: buildeBorder(),
          focusedBorder: buildeBorder(mainColor)),
    );
  }

  OutlineInputBorder buildeBorder([color]) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color ?? Colors.white),
        borderRadius: BorderRadius.circular(
          18,
        ));
  }
}
