import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/model/modelNote/modelNote.dart';
import 'package:notesapp/views/nots_view.dart';
import 'package:notesapp/views/widget/const.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(pknotesBox);
  Hive.registerAdapter(ModelNoteAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotsView(),
    );
  }
}
