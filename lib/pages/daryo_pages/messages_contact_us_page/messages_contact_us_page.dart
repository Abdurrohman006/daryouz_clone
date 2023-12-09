import 'package:daryouz_clone/components/hive_model/messages_madel.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class MessagesContactUsPage extends StatelessWidget {
  const MessagesContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mybox = Hive.box("allMessages");
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white70,
        title: Text("Messages Contact Us Page"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.segment))],
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  width: MediaQuery.of(context).size.width,
                  height: 52,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.2))),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Bugun, ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Shanba 17:09",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.2))),
                  child: Container(
                      alignment: Alignment.bottomLeft,
                      margin: const EdgeInsets.all(18.0),
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: mybox.values.length,
                        itemBuilder: (context, index) {
                          List<MessagesModel> messagesList =
                              mybox.values.toList().cast();
                          String dateString = messagesList[index].time;
                          DateTime date = DateTime.parse(dateString);
                          String formattedDate =
                              '${date.year}/${date.month}/${date.day} ${date.hour}:${date.minute}';
                          return ListTile(
                            title: Text(messagesList[index].text),
                            subtitle: Text(formattedDate),
                            trailing: Text(messagesList[index].email),
                          );
                        },
                        separatorBuilder: (context, index) => const Divider(),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
