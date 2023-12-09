import 'package:daryouz_clone/service/url_launcher_all.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/color.dart';

class TermsOfUsePage extends StatelessWidget {
  const TermsOfUsePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white70,
        title: const Text("Foydalanish shartlari"),
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
                child: Container(
                  alignment: Alignment.bottomLeft,
                  margin: const EdgeInsets.all(18.0),
                  child: const Text(
                    "Foydalanish shartlari",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://www.kennesaw.edu/degrees-programs/bachelor-degrees/images/game-design.jpg"),
                        fit: BoxFit.cover)),
                height: 130,
                width: double.infinity,
              ),
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
                        const TextSpan(text: 'Amaldagi qoidalar "Daryo" ('),
                        WidgetSpan(
                            child: GestureDetector(
                          onTap: () async {
                            await myLaunchUrl(
                                source: "web", text: "https://daryo.uz/");
                          },
                          child: const Text(
                            "www.daryo.uz",
                            style: TextStyle(
                                fontSize: 18, color: Colors.blueAccent),
                          ),
                        )),
                        const TextSpan(
                            text:
                                ') sayti (keyingi oʻrinlarda — sayt)da, shuningdek, uning maxsus loyihalari, ijtimoiy tarmoqlardagi sahifalari (keyingi oʻrinlarda — nashrning ijtimoiy tarmoqlari)da saytida eʼlon qilingan matnli, grafik, video, audio va boshqa koʻrinishdagi materiallardan foydalanish shartlari va tartibi (keyingi oʻrinlarda — shartlari)ni belgilab beradi. “Daryo” ('),
                        WidgetSpan(
                            child: GestureDetector(
                          onTap: () async {
                            await myLaunchUrl(
                                source: "web", text: "https://daryo.uz/");
                          },
                          child: const Text(
                            "www.daryo.uz",
                            style: TextStyle(
                                fontSize: 18, color: Colors.blueAccent),
                          ),
                        )),
                        const TextSpan(
                            text:
                                ') sayti “Simple Networking Solutions” MChJning xususiy nashri hisoblanadi. Saytdan foydalanish shartlarga, shuningdek, ularga kiritiladigan oʻzgartish va toʻldirishlarga roziligingizni bildiradi.\n\n'
                                'Saytda va nashrning ijtimoiy tarmoqlariga joylashtirilgan istalgan material mualliflik huquqi obyektidir. Saytning koʻrsatib oʻtilgan materiallarga boʻlgan huquqlari intellektual faoliyat natijasiga doir huquqlar toʻgʻrisidagi qonunchilik bilan himoya qilinadi.\n\n'),
                        const WidgetSpan(
                            child: Center(
                          child: Text(
                            "1. Axborotni ko'chirish\n",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                        const TextSpan(text: '1.1. “Daryo” ('),
                        WidgetSpan(
                            child: GestureDetector(
                          onTap: () async {
                            await myLaunchUrl(
                                source: "web", text: "https://daryo.uz/");
                          },
                          child: const Text(
                            "www.daryo.uz",
                            style: TextStyle(
                                fontSize: 18, color: Colors.blueAccent),
                          ),
                        )),
                        const TextSpan(
                            text:
                                ') saytidagi axborotni chop etish, koʻchirish, koʻpaytirish, tarqatish va undan boshqa koʻrinishda foydalanishga faqatgina tahririyatning yozma ruxsati bilan yoʻl qoʻyiladi.\n\n'
                                '1.2. Soʻrovlar info@simple.uz elektron pochta manziliga yuborilishi lozim.\n\n'),
                        const WidgetSpan(
                            child: Center(
                          child: Text(
                            "2. Fotosuratlar, illyustratsiyalar va videolardan foydalanish\n",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                        const TextSpan(
                            text:
                                '2.1. Sayt va nashr ijtimoiy tarmoqlaridagi “Daryo” ('),
                        WidgetSpan(
                            child: GestureDetector(
                          onTap: () async {
                            await myLaunchUrl(
                                source: "web", text: "https://daryo.uz/");
                          },
                          child: const Text(
                            "www.daryo.uz",
                            style: TextStyle(
                                fontSize: 18, color: Colors.blueAccent),
                          ),
                        )),
                        const TextSpan(
                            text:
                                ') vatermarki (logotipi) tushirilgan grafik va videotasvirlardan tahririyatning oldindan berilgan yozma ruxsati bilangina foydalanish mumkin.\n\n'
                                '2.2. Agar ruxsat olingan boʻlsa, surat yoki videoni eʼlon qilish vaqtida muallifning ismi va familiyasi hamda sayt nomini koʻrsatish shart. Fotosuratdagi vatermark saqlanib qolishi lozim.\n\n'
                                '2.3. Suratlar va videolarni oʻzgartirish, tahrirlash, ular asosida boshqa ishlar tayyorlash, soxtalashtirish, ulardan tijoriy maqsadlarda foydalanish yoki boshqa koʻrinishdagi modifikatsiyalar qilish taqiqlanadi.\n\n'
                                '2.4. “Daryo” ('),
                        WidgetSpan(
                            child: GestureDetector(
                          onTap: () async {
                            await myLaunchUrl(
                                source: "web", text: "https://daryo.uz/");
                          },
                          child: const Text(
                            "www.daryo.uz",
                            style: TextStyle(
                                fontSize: 18, color: Colors.blueAccent),
                          ),
                        )),
                        const TextSpan(
                            text:
                                ') vatermarki (logotipi) qoʻyilmagan barcha tasvirlar ularning yonida koʻrsatilgan huquq egalariga tegishli.\n\n'),
                        const WidgetSpan(
                            child: Center(
                          child: Text(
                            "3. Iqtibos keltirish\n",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                        const TextSpan(text: 'Iqtibos keltirishda “'),
                        WidgetSpan(
                            child: GestureDetector(
                          onTap: () async {
                            await myLaunchUrl(
                                source: "web", text: "https://daryo.uz/");
                          },
                          child: const Text(
                            "Daryo",
                            style: TextStyle(
                                fontSize: 18, color: Colors.blueAccent),
                          ),
                        )),
                        const TextSpan(
                            text:
                                '” iqtibos olingan tegishli sahifasiga giperhavola koʻrsatish majburiy. Ayni vaqtda giperhavola materialning birinchi yoki ikkinchi xatboshisida berilishi kerak.\n\n'),
                        const WidgetSpan(
                            child: Center(
                          child: Text(
                            "4. Tahririyat bilan muloqot\n",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                        const TextSpan(
                            text:
                                'Tahririyat barcha foydalanuvchilar bilan xabar almashish va yozishmalarga kirishish imkoniga ega emas.\n\n'
                                'U yoki bu materialdan foydalanish uchun ruxsat olish maqsadida yuborilgan soʻrovga tahririyat tomonidan 2 ish kuni davomida javob kelmasa, bu ruxsat soʻroviga rad javobi berilganini anglatadi.')
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
