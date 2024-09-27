import 'package:hive/hive.dart';

part 'modelNote.g.dart';

@HiveType(typeId: 0)
class ModelNote extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String context;
  @HiveField(2)
  String dateTime;
  @HiveField(3)
  int color;
  ModelNote(
      {required this.context,
      required this.dateTime,
      required this.title,
      required this.color});
}
