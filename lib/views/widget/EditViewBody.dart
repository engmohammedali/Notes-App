import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/model/logic/fetch_notes/notes_Cubit.dart';
import 'package:notesapp/model/modelNote/modelNote.dart';
import 'package:notesapp/views/widget/CustomIcon.dart';
import 'package:notesapp/views/widget/customTextFiles.dart';

class Editviewbody extends StatefulWidget {
  ModelNote note;
  Editviewbody({super.key, required this.note});

  @override
  State<Editviewbody> createState() => _AddNotesFormState();
}

class _AddNotesFormState extends State<Editviewbody> {
  String? newtitle, newcontent;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const Text("Edite Note",
                    style: TextStyle(
                      fontSize: 28,
                    )),
                const Spacer(),
                Customicon(
                  icon: Icons.check,
                  onPressed: () {
                    widget.note.title = newtitle ?? widget.note.title;
                    widget.note.content = newcontent ?? widget.note.content;
                    widget.note.save();
                    BlocProvider.of<NotesCubit>(context).fetchNotesCubit();
                    Navigator.pop(context);
                  },
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Customtextfiles(
              hitText: widget.note.title,
              onChanged: (value) {
                newtitle = value;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Customtextfiles(
              onChanged: (value) {
                newcontent = value;
              },
              hitText: widget.note.content,
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
