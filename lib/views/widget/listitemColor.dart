import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/model/logic/AddNotes/addNotes_Cubits.dart';

class ItemColoe extends StatelessWidget {
  ItemColoe({super.key, required this.isActive, required this.color});
  bool isActive;
  Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 34,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 30,
            backgroundColor: color,
          );
  }
}

class ListItemColor extends StatefulWidget {
  const ListItemColor({super.key});

  @override
  State<ListItemColor> createState() => _ListItemColorState();
}

class _ListItemColorState extends State<ListItemColor> {
  List<Color> colors = const [
    Color(0xFF9BCF53),
    Color(0xFFCDC733),
    Color(0xFF966C3B),
    Color(0xFFD0AF84),
    Color(0xFFFFE6CA),
    Color(0xFFD1E9F6),
  ];
  int crurentindex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, int index) {
            return GestureDetector(
                onTap: () {
                  crurentindex = index;
                  BlocProvider.of<AddNotesCubits>(context).color =
                      colors[index];
                  setState(() {});
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: ItemColoe(
                    color: colors[index],
                    isActive: crurentindex == index,
                  ),
                ));
          }),
    );
  }
}
