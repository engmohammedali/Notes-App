import 'package:flutter/material.dart';

class Notsitems extends StatelessWidget {
  const Notsitems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 14),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.yellow),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Flutter Tips",
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 14),
              child: Text(
                "Build your career with Mohammed Ali",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 15),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 24,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Text("2024, May",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.4),
                )),
          ),
        ],
      ),
    );
  }
}
