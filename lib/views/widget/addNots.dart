import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notesapp/views/widget/customBatten.dart';
import 'package:notesapp/views/widget/customTextFiles.dart';

class AddNotse extends StatelessWidget {
  const AddNotse({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: const Column(
          children: [
            SizedBox(
              height: 32,
            ),
            Customtextfiles(
              hitText: "Title",
            ),
            SizedBox(
              height: 16,
            ),
            Customtextfiles(
              hitText: "Content",
              maxLines: 5,
            ),
            SizedBox(
              height: 16,
            ),
            Custombatten(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
