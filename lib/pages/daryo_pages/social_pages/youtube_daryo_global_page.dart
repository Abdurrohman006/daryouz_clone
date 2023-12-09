import 'package:daryouz_clone/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class YoutubeDaryoGlobalPage extends StatelessWidget {
  const YoutubeDaryoGlobalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white70,
        title: const Text("YouTube | Daryo Global"),
        actions: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.segment))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 52,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.2))),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "bugun, ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "yakshanba 17:35",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.2))),
              child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 32),
                  child: const Text(
                    "YouTube | Daryo Global",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  )),
            ),
            const SizedBox(height: 10),
            Container(
              color: AppColor.color_bottom,
              width: double.infinity,
              height: 350,
              child: const Center(
                child: Text("Bottom",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
