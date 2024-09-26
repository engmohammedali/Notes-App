import 'package:flutter/material.dart';
import 'package:notesapp/views/widget/CustonSerch.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Notes",
            strutStyle: StrutStyle(
              fontSize: 28,
            )),
        Custonserch()
      ],
    );
  }
}
