import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/model/logic/AddNotes/addNotes_Cubits.dart';
import 'package:notesapp/model/logic/fetch_notes/notes_Cubit.dart';
import 'package:notesapp/model/modelNote/modelNote.dart';

class Controller {
  static Controller _controller = Controller._();
  Controller._();
  factory Controller() {
    return _controller;
  }
  addNote({required ModelNote note, required context}) {
    BlocProvider.of<AddNotesCubits>(context).addNote(note);
    BlocProvider.of<NotesCubit>(context).fetchNotesCubit();
  }

  void fetchNotes({required context}) {
    BlocProvider.of<NotesCubit>(context).fetchNotesCubit();
  }
}
