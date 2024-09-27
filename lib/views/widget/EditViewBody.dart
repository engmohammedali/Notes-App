import 'package:flutter/material.dart';
import 'package:notesapp/views/widget/CustonIcon.dart';
import 'package:notesapp/views/widget/customTextFiles.dart';

class Editviewbody extends StatelessWidget {
  const Editviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return AddNotesForm();
  }
}

class AddNotesForm extends StatefulWidget {
  const AddNotesForm({
    super.key,
  });

  @override
  State<AddNotesForm> createState() => _AddNotesFormState();
}

class _AddNotesFormState extends State<AddNotesForm> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const Text("Edite Note",
                    style: TextStyle(
                      fontSize: 28,
                    )),
                Spacer(),
                CustonIcon(
                  icon: Icons.check,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Customtextfiles(hitText: "Titel"),
            SizedBox(
              height: 15,
            ),
            Customtextfiles(
              hitText: "Content ",
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
