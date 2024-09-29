import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/model/logic/AddNotes/addNotes_Cubits.dart';
import 'package:notesapp/model/logic/AddNotes/state_addnotes.dart';
import 'package:notesapp/views/widget/add_form_note.dart';

class AddNotse extends StatelessWidget {
  const AddNotse({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocProvider<AddNotesCubits>(
        create: (context) => AddNotesCubits(),
        child: Container(
            padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: BlocBuilder<AddNotesCubits, NotedState>(
              builder: (context, state) {
                return AbsorbPointer(
                  absorbing: state is AddNotesLoading ? true : false,
                  child: const AddFormnots(),
                );
              },
            )),
      ),
    );
  }
}
