import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustonIcon extends StatelessWidget {
  var icon;
  CustonIcon({super.key, required this.icon});

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
                onPressed: () {},
                icon: Icon(
                  icon,
                  size: 28,
                ))));
  }
}
