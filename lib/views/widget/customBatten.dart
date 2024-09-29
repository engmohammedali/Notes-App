import 'package:flutter/material.dart';
import 'package:notesapp/views/widget/const.dart';

class Custombatten extends StatelessWidget {
  void Function()? onTap;
  Custombatten({super.key, this.onTap, this.isloading = false});
  bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: mainColor),
        width: MediaQuery.of(context).size.height,
        child: isloading
            ? const SizedBox(
                width: 25,
                height: 25,
                child: CircularProgressIndicator(
                  color: Colors.black,
                ))
            : const Center(
                child: Text(
                  "Add",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
      ),
    );
  }
}
