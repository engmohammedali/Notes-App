import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/SimpleBlocObserver.dart';
import 'package:notesapp/model/logic/fetch_notes/notes_Cubit.dart';
import 'package:notesapp/model/modelNote/modelNote.dart';
import 'package:notesapp/views/nots_view.dart';
import 'package:notesapp/views/widget/const.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ModelNoteAdapter());
  await Hive.openBox<ModelNote>(pknotesBox);

  Bloc.observer = Simpleblocobserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const NotsView(),
      ),
    );
  }
}
