import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Customicon extends StatelessWidget {
  var icon;
  void Function()? onPressed;
  Customicon({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 46,
        height: 46,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(16)),
        child: Center(
            child: IconButton(
                onPressed: onPressed,
                icon: Icon(
                  icon,
                  size: 28,
                ))));
  }
}
