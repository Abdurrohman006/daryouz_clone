import 'package:daryouz_clone/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutDaryoPage extends StatelessWidget {
  const AboutDaryoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white70,
        title: Text("About Daryo"),
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
                    child: const Text(
                      "Internet-nashr",
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
                ), // Image
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
                          child: RichText(
                            text: const TextSpan(
                                text: "",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black54),
                                children: [
                                  TextSpan(
                                    text:
                                        'Daryo" internet-nashri 2013-yilning yanvar oyidan buyon faoliyat ko\'rsatadi.\n\n',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  TextSpan(text: 'Shiorimiz: '),
                                  TextSpan(
                                    text:
                                        '"Yangiliklar daryosidan chetda qolmang!".\n\n',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  TextSpan(
                                      text:
                                          '"Daryo" - bu jahonda va O\'zbekistonda sodir '
                                          'bo\'layotgan eng so\'nggi yangiliklarni o\'quvchilarga '
                                          'sodda va tushunarli tilda hamda tezkor yetkazib '
                                          'berishga mo\'ljallangan internet-nashr.\n\n'
                                          '"Daryo" internet-nashri O\'zbekistondagi yetakchi '
                                          'ommaviy axborot vositalaridan biri hisoblanadi.\n\n'
                                          '"Daryo" 2013-yilda Uz Milliy domeni internet - '
                                          'festivalida "Yil yangiligi" nominatsiyasi bo\'yicha 3-'
                                          'o\'rinni egallagan. 2014-yilda Uz domeni internet-'
                                          'festivalining eng ommabop OAV sayti yo\'nalishida '
                                          'birinchi o\'ringa loyiq topilgan.\n\n'
                                          'Nashr yangiliklarini 1 oyda 2 milliondan ortiq kishi '
                                          'o\'qiydi. Saytdagi ko\'rishlar soni esa 1 oyda 27 '
                                          'milliondan oshadi.\n\n'
                                          'Bugungi kunda nashrda 50 dan ortiq tajribali, '
                                          'taniqli yosh jurnalistlar, shuningdek, muharrir '
                                          'hamda musahhihlar faoliyat olib boradi.'),
                                ]),
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
