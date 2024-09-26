import 'package:flutter/material.dart';
import 'package:notesapp/views/widget/CustonSerch.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text("Notes",
            style: TextStyle(
              fontSize: 28,
            )),
        Spacer(),
        Custonserch()
      ],
    );
  }
}
