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
          child: const AddFormnots()),
    );
  }
}

class AddFormnots extends StatefulWidget {
  const AddFormnots({super.key});

  @override
  State<AddFormnots> createState() => _AddnotsState();
}

class _AddnotsState extends State<AddFormnots> {
  GlobalKey<FormState> formKey = GlobalKey();
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            Customtextfiles(
              hitText: "Title",
              onSaved: (value) {
                title = value;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            Customtextfiles(
              hitText: "Content",
              maxLines: 5,
              onSaved: (value) {
                content = value;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            Custombatten(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                }
              },
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ));
  }
}
