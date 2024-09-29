import 'package:hive/hive.dart';
import 'package:notesapp/model/modelNote/modelNote.dart';
import 'package:notesapp/views/widget/const.dart';

class FetchNotes {
  static List<ModelNote> fetchNotes() {
    var noteBox = Hive.box<ModelNote>(pknotesBox);
    List<ModelNote> notes = noteBox.values.toList();
    return notes;
  }
}
