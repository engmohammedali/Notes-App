import 'package:hive/hive.dart';
import 'package:notesapp/model/logic/fetch_notes/notes_Cubit.dart';
import 'package:notesapp/model/modelNote/modelNote.dart';
import 'package:notesapp/views/widget/const.dart';

class AddNote {
  static Future<void> addNote({required ModelNote note}) async {
    var noteBox = Hive.box<ModelNote>(pknotesBox);
    await noteBox.add(note);
    
  }
}
