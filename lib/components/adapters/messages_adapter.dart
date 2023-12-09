import 'package:daryouz_clone/components/hive_model/messages_madel.dart';
import 'package:hive/hive.dart';

class MessagesAdapter extends TypeAdapter<MessagesModel> {
  @override
  final int typeId = 0;

  @override
  MessagesModel read(BinaryReader reader) {
    final email = reader.read() as String;
    final text = reader.read() as String;
    final time = reader.read() as String;

    return MessagesModel(email: email, text: text, time: time);
  }

  @override
  void write(BinaryWriter writer, MessagesModel obj) {
    writer.write(obj.email);
    writer.write(obj.text);
    writer.write(obj.time);
  }
}
