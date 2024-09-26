import 'package:flutter/material.dart';
import 'package:notesapp/views/widget/notes_view_body.dart';

class NotsView extends StatelessWidget {
  const NotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:NotesViewBody()
    );
  }
}

