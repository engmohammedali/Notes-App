import 'package:flutter/material.dart';
import 'package:notesapp/views/widget/CustomIcon.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("Notes",
            style: TextStyle(
              fontSize: 28,
            )),
        const Spacer(),
        Customicon(
          icon: Icons.search,
        )
      ],
    );
  }
}
