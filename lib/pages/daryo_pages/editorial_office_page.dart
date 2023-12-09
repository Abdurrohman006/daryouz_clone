import 'package:daryouz_clone/pages/daryo_pages/author_widget/author_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditorialOfficePage extends StatelessWidget {
  const EditorialOfficePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white70,
          title: const Text("Tahririyat"),
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
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.2))),
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
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.2))),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.all(18.0),
                          child: const Text(
                            'Tahririyat',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.all(18.0),
                          child: const Text(
                            '"Daryo" internet-nashrida 50 dan ortiq tajribali,'
                            'yosh taniqli jurnalistlar, shuningdek, muharrir va'
                            'musahhihlar faoliyat olib bormoqda. Ijodiy'
                            'jamoamizda ham yosh kadrlarni, ham katta ish'
                            'rajribasiga ega jurnalistlarni uchratishingiz'
                            'mumkin.\n\n'
                            'Biz o\'quvchilarimizni barcha muhim voqealar va'
                            'yangiliklardan xabardor qilish uchun kuniga 24'
                            'soat, yiliga 365 kun ishlaymiz',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    color: Colors.grey.withOpacity(0.2),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 18),
                          child: CircleAvatar(
                            radius: 80,
                            backgroundImage:
                                AssetImage('assets/images/unknown_avatar.jpg'),
                          ),
                        ),
                        const Text(
                          "Alisher Azimov",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(18.0),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person_outline_outlined,
                                size: 20,
                                color: Colors.black54,
                              ),
                              Text(
                                "  BATAFSIL",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  AuthorWidget(
                    name: "Umar Zohidov",
                    type: "Polvon",
                    image: "img.png",
                  ),
                  const SizedBox(height: 8),
                  AuthorWidget(
                      name: "Muhammadsolih Zohidov",
                      type: "Polvon number_1",
                      image: "img_3.png"),
                  const SizedBox(height: 8),
                  AuthorWidget(
                      name: "Mustafo Zohidov",
                      type: "Izoh yo'q",
                      image: "img_2.png"),
                  const SizedBox(height: 8),
                  AuthorWidget(
                      name: "Muhammadzohid Zohidov",
                      type: "Qaysar",
                      image: "img_1.png"),
                  const SizedBox(height: 8),
                  AuthorWidget(
                    name: "Nargiza Murodova",
                    type: "MUXBIR",
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
