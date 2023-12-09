import 'package:flutter/material.dart';

Widget AuthorWidget(
    {required String name,
    required String type,
    image = "unknown_avatar.jpg"}) {
  return Container(
    decoration:
        BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(0.2))),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/images/$image'),
          ),
        ),
        Container(
          child: Text(
            name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(18.0),
          child: Text(
            type,
            style: const TextStyle(fontSize: 14, color: Colors.black54),
          ),
        ),
      ],
    ),
  );
}
