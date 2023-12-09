import 'package:daryouz_clone/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TechnicalRequirementsPage extends StatelessWidget {
  const TechnicalRequirementsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white70,
        title: Text("Reklama materiallariga..."),
        actions: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.segment))
        ],
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
                          "Shanba 12:09",
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
                    child: const Text(
                      "Reklama materiallariga qo'yiladigan texnik talablar",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://www.kennesaw.edu/degrees-programs/bachelor-degrees/images/game-design.jpg"),
                        fit: BoxFit.cover),
                  ),
                  height: 130,
                  width: double.infinity,
                ),

                // TextStyle(
                //     fontSize: 18, color: Colors.black54),//
                //
                //     Image
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.2))),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 18.0),
                          child: const Text(
                            '"Daryo" internet-nashrida joylashtirish uchun taqdim etiladigan reklama materiallarning fayllari,'
                            'o\'lcahmlari, formatlari va matnlari reklama materiallariga qo\'yiladigan texnik talabalarda belgilangan qoidalarga muvofiq tayyorlanishi kerak.',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black54),
                          )),
                    ],
                  ),
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
        ),
      ),
    );
  }
}
