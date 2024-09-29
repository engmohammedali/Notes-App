import 'package:bloc/bloc.dart';
import 'package:notesapp/model/logic/fetch_notes/fetch_notes.dart';
import 'package:notesapp/model/logic/fetch_notes/state_fetch_notes.dart';
import 'package:notesapp/model/modelNote/modelNote.dart';

class NotesCubit extends Cubit<FetchNotedState> {
  NotesCubit() : super(FetchInitNotesState());
  List<ModelNote>? notes;
  fetchNotesCubit() {
    notes = FetchNotes.fetchNotes();
    emit(FetchNotesSucces());
  }
}
