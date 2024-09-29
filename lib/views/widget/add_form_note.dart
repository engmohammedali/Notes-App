import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notesapp/model/logic/AddNotes/addNotes_Cubits.dart';
import 'package:notesapp/model/logic/AddNotes/state_addnotes.dart';
import 'package:notesapp/model/modelNote/modelNote.dart';
import 'package:notesapp/viewmodel/controller.dart';
import 'package:notesapp/views/widget/customBatten.dart';
import 'package:notesapp/views/widget/customTextFiles.dart';
import 'package:notesapp/views/widget/listitemColor.dart';

class AddFormnots extends StatefulWidget {
  const AddFormnots({super.key});

  @override
  State<AddFormnots> createState() => _AddnotsState();
}

class _AddnotsState extends State<AddFormnots> {
  GlobalKey<FormState> formKey = GlobalKey();
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            Customtextfiles(
              hitText: "Title",
              onSaved: (value) {
                title = value;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            Customtextfiles(
              hitText: "Content",
              maxLines: 5,
              onSaved: (value) {
                content = value;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            const ListItemColor(),
            const SizedBox(
              height: 15,
            ),
            BlocBuilder<AddNotesCubits, NotedState>(
              builder: (context, state) {
                if (state is AddNoteFailure) {
                  print(state.message);
                }
                if (state is AddNoteSucces) {
                  print("Don.....");
                  Navigator.pop(context);
                }

                return Custombatten(
                  isloading: state is AddNotesLoading ? true : false,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      var note = ModelNote(
                          content: content!,
                          dateTime: DateFormat('dd-mm yyyy')
                              .format(DateTime.now())
                              .toString(),
                          title: title!,
                          color: Colors.yellow.value);

                      Controller().addNote(note: note, context: context);
                    }
                  },
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ));
  }
}
