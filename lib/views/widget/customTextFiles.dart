import 'package:flutter/material.dart';
import 'package:notesapp/views/widget/const.dart';

class Customtextfiles extends StatelessWidget {
  final String hitText;
  final int? maxLines;
  void Function(String?)? onSaved;
  void Function(String)? onChanged;
  Customtextfiles(
      {super.key,
      required this.hitText,
      this.maxLines = 1,
      this.onSaved,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Filed is required";
        }
      },
      onSaved: onSaved,
      style: TextStyle(color: mainColor),
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
