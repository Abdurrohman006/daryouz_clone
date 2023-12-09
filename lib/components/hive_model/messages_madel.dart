import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class MessagesModel extends HiveObject {
  @HiveField(0)
  String email;
  @HiveField(0)
  String text;
  @HiveField(0)
  String time;

  MessagesModel({required this.email, required this.text, required this.time});
}
