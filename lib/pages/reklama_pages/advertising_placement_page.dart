import 'package:daryouz_clone/constants/color.dart';
import 'package:daryouz_clone/service/url_launcher_all.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdvertisingPlacementPage extends StatelessWidget {
  const AdvertisingPlacementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white70,
        title: const Text("Reklama Narxlari"),
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
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          // width: double.infinity,
          child: SingleChildScrollView(
              child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                width: MediaQuery.of(context).size.width,
                height: 52,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.2))),
                child: const Row(
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
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.2))),
                padding: const EdgeInsets.all(18),
                child: RichText(
                  text: TextSpan(
                      text: "",
                      style:
                          const TextStyle(fontSize: 17, color: Colors.black54),
                      children: [
                        const WidgetSpan(
                            child: Text(
                          "Reklama narxlari",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )),

                        const TextSpan(
                            text:
                                '\n\n"Daryo.uz" -- Ozbekistondagi va dunyodagi eng muhim voqealarni yorituvchi internet nashri.\n\n'
                                'Biz 2013-yildan beri ishlaymiz va hozir mamlakatning asosiy ommaviy axborot vositalaridan biriga aylandik.\n\n'
                                '"Daryo.uz"ga kuniga 300 000 dan, oyiga esa 2 000 000 dan ortiq kishi tashrif buyuradi.\n\n'
                                'Ijtimoiy tarmoqlar, YouTube va Telegram\'da obunachilarimiz soni 1 500 000 dan oshiq. Bizning auditoriyamiz deyarli butun O\'zbekistonni tashkil etadi.\n\n'
                                'O\'quvchilarimizning o\'rtacha yoshi 18 yoshdan 34 yoshgacha. Bu yangi g\'oyalar va yangi imkoniyatlarga qiziqadigan yangi omma hisoblanadi.\n\n'
                                '"Daryo.uz"da reklama keng auditoriyani qamrab olish, mahsulot yoki xizmatingiz haqida deyarli butun mamlakatga xabar berishning eng samarali usullardan biridir.\n\n'),

                        const WidgetSpan(
                            child: Text(
                          "Saytimiz reklama uchun quyidagi manzilga murojaat qiling:\n",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        )),
                        const TextSpan(
                            text: 'Ish kunlari soat 09:00 dan 18:00 gacha:\n'
                                '+ 998 71 209 67 77 (Ofis) \n+ 998 90 185 02 32 ('),
                        //
                        WidgetSpan(
                            child: GestureDetector(
                          onTap: () async {
                            await myLaunchUrl(
                                source: "web",
                                text: "https:/T.me//+998901850232");
                          },
                          child: const Text(
                            "Shirin",
                            style: TextStyle(
                                fontSize: 18, color: Colors.blueAccent),
                          ),
                        )),
                        const TextSpan(text: ') \n+ 998 90 185 03 93 ('),
                        WidgetSpan(
                            child: GestureDetector(
                          onTap: () async {
                            await myLaunchUrl(
                                source: "web",
                                text: "https://T.me//+998901850393");
                          },
                          child: const Text(
                            "Farrux",
                            style: TextStyle(
                                fontSize: 18, color: Colors.blueAccent),
                          ),
                        )),
                        const TextSpan(text: ')'),
                      ]),
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
          )),
        ),
      ),
    );
  }
}
