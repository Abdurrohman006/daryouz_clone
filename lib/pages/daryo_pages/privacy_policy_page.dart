import 'package:daryouz_clone/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../service/url_launcher_all.dart';

class PrivacyPolicePage extends StatelessWidget {
  const PrivacyPolicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white70,
        title: const Text("Mahfiylik siyosati"),
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
                    "Mahfiylik siyosati",
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
                        const TextSpan(
                            text:
                                'Shaxsiy ma’lumotlarni qayta ishlash va shaxsiy ma’lumotlarning maxfiyligini ta’minlash bo‘yicha ushbu siyosat (keyingi o‘rinlarda siyosat deb yuritiladi)\n'
                                'internetdagi '),
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
                                ' veb-saytida va “Daryo” mobil ilovasi, ijtimoiy tarmoqlardagi rasmiy sahifalarida (keyingi o‘rinlarda nashr deb yuritiladi) joylashtirilgan barcha ma’lumotlarga nisbatan qo‘llaniladi. Nashrdan foydalanuvchilar, tashrif buyuruvchilar nashrning boshqa foydalanuvchilari nashrdan, uning xizmatlaridan, dasturlari va mahsulotlaridan foydalanish jarayonida foydalanuvchi haqida bilib olishlari mumkin.\n\n'
                                'Nashr xizmatlaridan foydalanish foydalanuvchining ushbu siyosatga va unda ko‘rsatilgan shaxsiy ma’lumotlarini qayta ishlash shartlariga so‘zsiz roziligini anglatadi. Ushbu shartlarga rozi bo‘lmagan taqdirda, foydalanuvchi nashr xizmatlaridan foydalanishdan voz kechishi kerak.\n\n'),
                        const WidgetSpan(
                            child: Center(
                          child: Text(
                            "1. Umumiy qoidalar\n",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                        const TextSpan(
                            text:
                                '1.1. Ushbu siyosat doirasida foydalanuvchining shaxsiy ma’lumotlari quyidagilarni anglatadi:\n\n'
                                '1.1.1. Ro‘yxatdan o‘tish (hisob qaydnomasini yaratish) yoki nashrdan foydalanish jarayonida foydalanuvchi o‘zi haqida mustaqil ravishda taqdim etadigan shaxsiy ma’lumotlar, shu jumladan, foydalanuvchining shaxsiy ma’lumotlari.\n\n'
                                '1.1.2. Nashr ma’muriyati, umuman olganda, foydalanuvchilar tomonidan taqdim etilgan shaxsiy ma’lumotlarning to‘g‘riligini tekshirmaydi va ularning huquqiy layoqatini nazorat qilmaydi. Shu bilan birga, nashr ma’muriyati foydalanuvchi ro‘yxatdan o‘tish shaklida taklif qilingan masalalar bo‘yicha ishonchli va yetarli darajada shaxsiy ma’lumotlarni taqdim etishidan kelib chiqadi va bu ma’lumotlarni yangilab turadi. Noto‘g‘ri ma’lumotlarni taqdim etish xavfi uni taqdim etgan foydalanuvchi tomonidan o‘z zimmasiga oladi.\n\n'
                                '1.1.3. Ushbu maxfiylik siyosati faqat '),
                        //
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
                        const TextSpan(text: ' nashri uchun amal qiladi. '),
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
                        const TextSpan(text: ' nashri foydalanuvchi '),
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
                                ' nashri sahifalarida mavjud boʻlgan havolalardan foydalanishi mumkin boʻlgan uchinchi shaxslarning veb-saytlarini nazorat qilmaydi va ular uchun javobgar emas.\n\n'),

                        const WidgetSpan(
                            child: Center(
                          child: Text(
                            "2. Foydalanuvchilarning shaxsiy ma’lumotlarini qayta ishlashning maqsadlari\n",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),

                        const TextSpan(
                            text:
                                '2.1. Nashr shaxsiy ma’lumotlarni quyidagi maqsadlarda to‘playdi va saqlaydi:\n'),
                        const TextSpan(
                            text:
                                '2.2.1. Nashrning barcha mavjud xizmatlaridan foydalanish uchun nashrda ro‘yxatdan o‘tgan foydalanuvchining identifikatsiyasi.\n'
                                '2.2.2. Foydalanuvchiga nashrning shaxsiylashtirilgan resurslariga kirishni ta’minlash.\n'
                                '2.2.3. Foydalanuvchi bilan fikr-mulohazalarni o‘rnatish, shu jumladan, xabarnomalarni yuborish, nashrdan foydalanish bo‘yicha so‘rovlar, foydalanuvchining so‘rovlari va ilovalarini qayta ishlash.\n'
                                '2.2.4. Nashr sifatini oshirish, foydalanish qulayligi, yangi xizmatlar va xizmatlarni rivojlantirish.\n'
                                '2.2.5. Reklama faoliyatini amalga oshirish.\n\n'),
                        const WidgetSpan(
                            child: Center(
                          child: Text(
                            "3. Foydalanuvchilarning qanday shaxsiy ma’lumotlari yig‘iladi?\n",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                        const TextSpan(
                            text:
                                '3.1. Faqatgina shaxsiy ma’lumotlar to‘planishi kerak, bu foydalanuvchi bilan avtorizatsiya va fikr-mulohazalarni qo‘llab-quvvatlash imkoniyatini beradi.\n\n'
                                '3.1.1. Foydalanuvchining roziligi bilan nashr quyidagi ma’lumotlarni oladi:\n\n'),

                        const WidgetSpan(
                            child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 22, right: 8),
                                  child: Icon(
                                    Icons.lens_sharp,
                                    size: 8,
                                  ),
                                ),
                                Text(
                                  'E-mail manzili;',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black54),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 22, right: 8),
                                  child: Icon(
                                    Icons.lens_sharp,
                                    size: 8,
                                  ),
                                ),
                                Text(
                                  'Ism va familiya',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black54),
                                )
                              ],
                            ),
                            Text('')
                          ],
                        )),
                        const TextSpan(
                            text:
                                'Ba’zi ma’lumotlar nashr xizmatlaridan foydalanish jarayonida foydalanuvchi qurilmasida o‘rnatilgan dasturiy ta’minot yordamida avtomatik ravishda uzatiladi, jumladan:\n\n'),

                        const WidgetSpan(
                            child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 22, right: 8),
                                  child: Icon(
                                    Icons.lens_sharp,
                                    size: 8,
                                  ),
                                ),
                                Text(
                                  'IP manzil;',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black54),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 22, right: 8),
                                  child: Icon(
                                    Icons.lens_sharp,
                                    size: 8,
                                  ),
                                ),
                                Text(
                                  'Cookie ma’lumotlari;',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black54),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 22, right: 8, top: 7),
                                  child: Icon(
                                    Icons.lens_sharp,
                                    size: 8,
                                  ),
                                ),
                                Text(
                                  'Foydalanuvchining brauzeri (yoki\nnashr resurslariga kirishni\nta’minlaydigan boshqa dastur)\nhaqidagi ma’lumotlar;',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black54),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 22, right: 8, top: 7),
                                  child: Icon(
                                    Icons.lens_sharp,
                                    size: 8,
                                  ),
                                ),
                                Text(
                                  'Foydalanuvchi tomonidan\nfoydalaniladigan apparat va\ndasturiy ta’minotning texnik\ntavsiflari;',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black54),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 22, right: 8, top: 7),
                                  child: Icon(
                                    Icons.lens_sharp,
                                    size: 8,
                                  ),
                                ),
                                Text(
                                  'Nashr resurslariga kirish sanasi\nva vaqti;',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black54),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 22, right: 8),
                                  child: Icon(
                                    Icons.lens_sharp,
                                    size: 8,
                                  ),
                                ),
                                Text(
                                  'So‘ralgan sahifalar manzillari.',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black54),
                                )
                              ],
                            ),
                            Text('')
                          ],
                        )),

                        ////////////////////////////

                        const WidgetSpan(
                            child: Center(
                          child: Text(
                            "4. Yig‘ilgan shaxsiy ma’lumotlardan qanday foydalaniladi?\n",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                        const TextSpan(
                            text:
                                '4.1. Foydalanuvchi tomonidan taqdim etilgan shaxsiy ma’lumotlar nashr resurslarida avtorizatsiya qilish va u bilan fikr almashish, shu jumladan, bildirishnomalarni yuborish uchun ishlatiladi.\n\n'),
                        const WidgetSpan(
                            child: Center(
                          child: Text(
                            "5. Foydalanuvchining shaxsiy ma’lumotlarini qayta ishlash va uni uchinchi shaxslarga o‘tkazish shartlari\n",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),

                        const TextSpan(
                            text:
                                '5.1. Nashr o‘zining ichki qoidalariga muvofiq foydalanuvchilarning shaxsiy ma’lumotlarini saqlaydi.\n\n'
                                '5.2. Foydalanuvchining shaxsiy ma’lumotlariga nisbatan uning maxfiyligi saqlanadi, bundan foydalanuvchi o‘zi haqidagi ma’lumotlarni cheklanmagan miqdordagi shaxslarga umumiy kirish uchun ixtiyoriy ravishda taqdim etgan hollar bundan mustasno.\n\n'
                                '5.3. Sayt quyidagi hollarda foydalanuvchining shaxsiy ma’lumotlarini uchinchi shaxslarga o‘tkazish huquqiga ega:\n\n'
                                '5.3.1. Foydalanuvchi bunday harakatlarga rozi bo‘lsa.\n\n'
                                '5.3.2. O‘tkazma foydalanuvchining ma’lum bir xizmatdan foydalanishi yoki foydalanuvchi bilan muayyan kelishuv yoki shartnomani bajarishi uchun zarur bo‘lsa.\n\n'
                                '5.3.3. O‘tkazish qonun hujjatlarida belgilangan tartibda ko‘zda tutilgan bo‘lsa.\n\n'
                                '5.3.4. Nashr sotilgan taqdirda, ekvayer o‘zi olgan shaxsiy ma’lumotlarga nisbatan ushbu siyosat shartlariga rioya qilish bo‘yicha barcha majburiyatlarni o‘z zimmasiga oladi.\n\n'
                                '5.3.5. Nashr ma’muriyati yoki uchinchi shaxslarning huquqlari va qonuniy manfaatlarini foydalanuvchi tomonidan nashrdan foydalanish shartlarini buzgan hollarda himoya qilish imkoniyatini ta’minlash maqsadida.\n\n'
                                '5.4. Foydalanuvchining shaxsiy ma’lumotlariga ishlov berish hech qanday qonuniy yo‘l bilan, shu jumladan, avtomatlashtirish vositalaridan foydalangan holda shaxsiy ma’lumotlarning axborot tizimlarida yoki bunday vositalardan foydalanmasdan muddatsiz amalga oshiriladi. Foydalanuvchilarning shaxsiy maʼlumotlariga ishlov berish Oʻzbekiston Respublikasining 2019-yil 2-iyuldagi “Shaxsiy maʼlumotlar toʻgʻrisida”gi qonuniga muvofiq amalga oshiriladi.\n\n'
                                '5.5. Shaxsiy ma’lumotlar yo‘qolgan yoki oshkor qilingan taqdirda, nashr ma’muriyati foydalanuvchiga shaxsiy ma’lumotlarning yo‘qolishi yoki oshkor etilishi haqida xabar beradi.\n\n'
                                '5.6. Nashr ma’muriyati foydalanuvchining shaxsiy ma’lumotlarini ruxsatsiz yoki tasodifiy kirish, yo‘q qilish, o‘zgartirish, bloklash, nusxalash, tarqatish, shuningdek, uchinchi shaxslarning boshqa noqonuniy harakatlaridan himoya qilish uchun zarur tashkiliy va texnik choralarni ko‘radi.\n\n'
                                '5.7. Nashr ma’muriyati foydalanuvchi bilan birgalikda foydalanuvchi shaxsiy ma’lumotlarining yo‘qolishi yoki oshkor etilishi natijasida yuzaga keladigan yo‘qotishlar yoki boshqa salbiy oqibatlarning oldini olish uchun barcha zarur choralarni ko‘radi.\n\n'),
//////////////////////////////////////////////////////////////////////////
                        const WidgetSpan(
                            child: Center(
                          child: Text(
                            "Shaxsiy ma’lumotlarni o‘chirish shartlari\n",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                        const TextSpan(
                            text:
                                '6.1. Foydalanuvchi istalgan vaqtda nashr resurslaridan foydalanishni to‘xtatish va o‘zi yaratgan hisob qaydnomasini o‘chirish huquqiga ega. Buning uchun nashrda roʻyxatdan oʻtishda koʻrsatilgan elektron pochta manzilingizdan info@simple.uz elektron manziliga hisob qaydnomasi va shaxsiy maʼlumotlarni oʻchirish boʻyicha soʻrov yuborishingiz kerak.\n\n'
                                '6.2. Ma’muriyat uning yozma asoslantirilgan so‘rovini olgandan keyin 14 (o‘n to‘rt) kun ichida foydalanuvchi hisobini va tegishli shaxsiy ma’lumotlarni o‘chirib tashlaydi.\n\n'),
                        const WidgetSpan(
                            child: Center(
                          child: Text(
                            "7. Tomonlarning majburiyatlari\n",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                        const TextSpan(
                            text: '7.1. Foydalanuvchi quyidagilarga majbur:\n\n'
                                '7.1.1. Nashr resurslaridan foydalanish uchun zarur bo‘lgan shaxsiy ma’lumotlar haqida ma’lumot berish.\n\n'
                                '7.1.2. Shaxsiy ma’lumotlar yoki ularning bir qismi to‘g‘risidagi taqdim etilgan ma’lumotlarni yangilash, to‘ldirish, o‘chirish, agar ushbu ma’lumotlar o‘zgargan bo‘lsa.\n\n'
                                '7.2. Nashr ma’muriyati quyidagilarga majburdir:\n\n'
                                '7.2.1. Olingan ma’lumotlardan faqat ushbu maxfiylik siyosatida ko‘rsatilgan maqsadlar uchun foydalanish.\n\n'
                                '7.2.2. Maxfiy ma’lumotlar maxfiy saqlanishini, foydalanuvchining yozma ruxsatisiz oshkor qilinmasligini, shuningdek, ushbu maxfiylik siyosatida nazarda tutilgan hollar bundan mustasno, foydalanuvchining uzatilgan shaxsiy ma’lumotlarini sotmaslik, almashtirmaslik, nashr etmaslik yoki boshqa mumkin bo‘lgan usullar bilan oshkor qilmaslikni ta’minlash.\n\n'
                                '7.2.3. Mavjud biznes operatsiyalarida ushbu turdagi ma’lumotlarni himoya qilish uchun odatda qo‘llaniladigan jarayonlarga muvofiq foydalanuvchi shaxsiy ma’lumotlarining maxfiyligini himoya qilish uchun ehtiyot choralarini ko‘radi.\n\n'
                                '7.2.4. Noto‘g‘ri shaxsiy ma’lumotlar yoki noqonuniy xatti-harakatlar aniqlangan taqdirda, foydalanuvchi yoki uning qonuniy vakili yoki shaxsiy ma’lumotlar subyektlarining huquqlarini himoya qilish bo‘yicha vakolatli organ murojaat qilgan yoki tekshirish muddati uchun so‘ragan paytdan boshlab tegishli foydalanuvchiga tegishli shaxsiy ma’lumotlarni bloklash.\n\n'),
                        const WidgetSpan(
                            child: Center(
                          child: Text(
                            "8. Qo‘shimcha shartlar\n",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                        const TextSpan(
                            text:
                                '8.1. Nashr ma’muriyati foydalanuvchining roziligisiz ushbu maxfiylik siyosatiga o‘zgartirishlar kiritishga haqli.\n\n'
                                '8.2. Yangi maxfiylik siyosati, agar maxfiylik siyosatining yangi versiyasida boshqacha qoida nazarda tutilgan bo‘lmasa, u saytda joylashtirilgan paytdan boshlab kuchga kiradi.\n\n'
                                '8.3. Ushbu maxfiylik siyosati bo‘yicha barcha takliflar yoki savollar bo‘yicha nashr ma’muriyatiga '),
                        WidgetSpan(
                            child: GestureDetector(
                          onTap: () async {
                            await myLaunchUrl(
                                source: "email", text: "info@simple.uz");
                          },
                          child: const Text(
                            "info@simple.uz",
                            style: TextStyle(
                                fontSize: 18, color: Colors.blueAccent),
                          ),
                        )),
                        const TextSpan(
                            text: ' elektron manzilga xabar berish kereak\n\n'),
                        const TextSpan(
                            text:
                                '8.4. Joriy maxfiylik siyosati quyidagi sahifada joylashtirilgan: '),
                        WidgetSpan(
                            child: GestureDetector(
                          onTap: () async {
                            await myLaunchUrl(
                                source: "web",
                                text:
                                    "https://daryo.uz/uz/p/mahfijlik-siesati");
                          },
                          child: const Text(
                            "www.daryo.uz/uz/p/mahfijlik-siesati",
                            style: TextStyle(
                                fontSize: 18, color: Colors.blueAccent),
                          ),
                        )),
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
