import 'package:flutter/material.dart';
import 'package:notesapp/model/modelNote/modelNote.dart';
import 'package:notesapp/views/widget/EditViewBody.dart';

class Editenoteview extends StatelessWidget {
  ModelNote note;
  Editenoteview({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Editviewbody(
      note: note,
    ));
  }
}
