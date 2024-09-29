import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:notesapp/model/logic/AddNotes/add_notes.dart';
import 'package:notesapp/model/logic/AddNotes/state_addnotes.dart';
import 'package:notesapp/model/modelNote/modelNote.dart';

class AddNotesCubits extends Cubit<NotedState> {
  Color color = const Color(0xFF9BCF53);
  AddNotesCubits() : super(AddNotesInit());
  addNote(ModelNote note) async {
    note.color = color.value;
    emit(AddNotesLoading());
    try {
      await AddNote.addNote(note: note);

      emit(AddNoteSucces());
    } catch (e) {
      emit(AddNoteFailure(message: e.toString()));
    }
  }
}
