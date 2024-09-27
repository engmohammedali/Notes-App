import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notesapp/model/modelNote/AddNotes/state_addnotes.dart';
import 'package:notesapp/model/modelNote/modelNote.dart';
import 'package:notesapp/views/widget/const.dart';

class AddNotesCubits extends Cubit<NotedState> {
  AddNotesCubits() : super(AddNotesInit());
  addNotes(ModelNote note) async {
    emit(AddNotesLoading());
    try {
      var noteBox = Hive.box<ModelNote>(pknotesBox);
      await noteBox.add(note);
      emit(AddNoteSucces());
    } catch (e) {
      emit(AddNoteFailure(message: e.toString()));
    }
  }
}
