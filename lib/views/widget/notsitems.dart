import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/model/logic/fetch_notes/notes_Cubit.dart';
import 'package:notesapp/model/modelNote/modelNote.dart';
import 'package:notesapp/views/EditeNoteView.dart';

class Notsitems extends StatelessWidget {
  ModelNote note;
  Notsitems({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Editenoteview(
                    note: note,
                  ))),
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 14),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Color(note.color)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 4),
              title: Text(
                note.title,
                style: const TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 14),
                child: Text(
                  note.content,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 15),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchNotesCubit();
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 24,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14),
              child: Text(note.dateTime,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withOpacity(0.4),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
