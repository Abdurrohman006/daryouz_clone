import 'package:daryouz_clone/controller/all_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfigureNotificatoionsPage extends StatefulWidget {
  const ConfigureNotificatoionsPage({Key? key}) : super(key: key);

  @override
  State<ConfigureNotificatoionsPage> createState() =>
      _ConfigureNotificatoionsPageState();
}

class _ConfigureNotificatoionsPageState
    extends State<ConfigureNotificatoionsPage> {
  bool switchLight0 = false;
  bool switchLight1 = false;
  bool switchLight2 = false;
  bool switchLight3 = false;
  bool switchLight4 = false;
  bool switchLight5 = false;
  bool switchLight6 = false;
  bool switchLight7 = false;
  bool switchLight8 = false;
  bool switchLight9 = false;
  bool switchLight10 = false;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AllController());
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white70,
          title: const Text(
            "NEWS BY CATEGORY",
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
          actions: [
            IconButton(
                icon: const Icon(Icons.close_outlined),
                onPressed: () {
                  Get.back();
                }),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      SizedBox(width: 8),
                      Icon(
                        Icons.fact_check_outlined,
                        color: Colors.grey,
                        size: 20,
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        "Asosiy yangiliklar",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Switch(
                      value: switchLight0,
                      onChanged: (value) => setState(() {
                            switchLight0 = value;
                          })),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      SizedBox(width: 8),
                      Icon(
                        Icons.ballot_outlined,
                        color: Colors.grey,
                        size: 20,
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        "So'nggi yangiliklar",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Switch(
                      value: switchLight1,
                      onChanged: (value) => setState(() {
                            switchLight1 = value;
                          })),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 15),
                        color: Colors.lightBlueAccent,
                        width: 4,
                        height: 12,
                      ),
                      const Text(
                        "Mahalliy",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Switch(
                      value: switchLight2,
                      onChanged: (value) => setState(() {
                            switchLight2 = value;
                          })),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 15),
                        color: Colors.tealAccent,
                        width: 4,
                        height: 12,
                      ),
                      const Text(
                        "Dunyo",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Switch(
                      value: switchLight3,
                      onChanged: (value) => setState(() {
                            switchLight3 = value;
                          })),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 15),
                        color: Colors.yellowAccent,
                        width: 4,
                        height: 12,
                      ),
                      const Text(
                        "Madaniyat",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Switch(
                      value: switchLight4,
                      onChanged: (value) => setState(() {
                            switchLight4 = value;
                          })),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 15),
                        color: Colors.purpleAccent,
                        width: 4,
                        height: 12,
                      ),
                      const Text(
                        "Layfstayl",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Switch(
                      value: switchLight5,
                      onChanged: (value) => setState(() {
                            switchLight5 = value;
                          })),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 15),
                        color: Colors.pinkAccent,
                        width: 4,
                        height: 12,
                      ),
                      const Text(
                        "Sport",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Switch(
                      value: switchLight7,
                      onChanged: (value) => setState(() {
                            switchLight7 = value;
                          })),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 15),
                        color: Colors.orange,
                        width: 4,
                        height: 12,
                      ),
                      const Text(
                        "Pul",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Switch(
                      value: switchLight8,
                      onChanged: (value) => setState(() {
                            switchLight8 = value;
                          })),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 15),
                        color: Colors.purpleAccent,
                        width: 4,
                        height: 12,
                      ),
                      const Text(
                        "Markaziy Osiyo",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Switch(
                      value: switchLight6,
                      onChanged: (value) => setState(() {
                            switchLight6 = value;
                          })),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.play_arrow_outlined,
                        color: Colors.grey,
                        size: 20,
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        "Multimedia",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Switch(
                      value: switchLight9,
                      onChanged: (value) => setState(() {
                            switchLight9 = value;
                          })),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.account_balance,
                        color: Colors.grey,
                        size: 20,
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        "Kolumnistlar",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Switch(
                      value: switchLight10,
                      onChanged: (value) => setState(() {
                            switchLight10 = value;
                          })),
                ],
              ),
            ],
          ),
        ));
  }
}
