import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/model/logic/fetch_notes/notes_Cubit.dart';
import 'package:notesapp/model/logic/fetch_notes/state_fetch_notes.dart';
import 'package:notesapp/model/modelNote/modelNote.dart';
import 'package:notesapp/viewmodel/controller.dart';
import 'package:notesapp/views/widget/notsitems.dart';

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  void initState() {
    Controller().fetchNotes(context: context);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: BlocBuilder<NotesCubit, FetchNotedState>(
        builder: (context, state) {
          List<ModelNote> notes =
              BlocProvider.of<NotesCubit>(context).notes ?? [];
          return ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: notes.length,
              itemBuilder: (context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Notsitems(
                    note: notes[index],
                  ),
                );
              });
        },
      ),
    );
  }
}
