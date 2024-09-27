import 'package:flutter/material.dart';
import 'package:notesapp/views/widget/CustonIcon.dart';
import 'package:notesapp/views/widget/customTextFiles.dart';

class Editviewbody extends StatelessWidget {
  const Editviewbody({super.key});

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
