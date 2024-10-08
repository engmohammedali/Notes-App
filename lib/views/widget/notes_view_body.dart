import 'package:flutter/material.dart';
import 'package:notesapp/views/widget/appbar.dart';
import 'package:notesapp/views/widget/items.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          MyAppBar(),
          SizedBox(
            height: 10,
          ),
          Expanded(child: Items()),
        ],
      ),
    );
  }
}
