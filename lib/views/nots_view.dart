import 'package:flutter/material.dart';
import 'package:notesapp/views/widget/addNots.dart';
import 'package:notesapp/views/widget/const.dart';
import 'package:notesapp/views/widget/notes_view_body.dart';

class NotsView extends StatelessWidget {
  const NotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: mainColor,
        onPressed: () {
          showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              context: context,
              builder: (context) {
                return const AddNotse();
              });
        },
        child: const Icon(
          Icons.add,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
