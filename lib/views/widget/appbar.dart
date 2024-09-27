import 'package:flutter/material.dart';
import 'package:notesapp/views/widget/CustonIcon.dart';


class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Notes",
            style: TextStyle(
              fontSize: 28,
            )),
        Spacer(),
        CustonIcon(
          icon: Icons.search,
        )
      ],
    );
  }
}
