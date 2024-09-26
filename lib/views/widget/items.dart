import 'package:flutter/material.dart';
import 'package:notesapp/views/widget/notsitems.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: ListView.builder(
          padding: const EdgeInsets.all(0),
          itemCount: 7,
          itemBuilder: (context, int index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Notsitems(),
            );
          }),
    );
  }
}
