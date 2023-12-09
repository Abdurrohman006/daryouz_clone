import 'package:daryouz_clone/components/model/currency_model.dart';
import 'package:daryouz_clone/controller/all_controller.dart';
import 'package:daryouz_clone/pages/daryo_pages/about_daryo_page.dart';
import 'package:daryouz_clone/pages/daryo_pages/contact_us_page.dart';
import 'package:daryouz_clone/pages/daryo_pages/editorial_office_page.dart';
import 'package:daryouz_clone/pages/daryo_pages/news_archive_page.dart';
import 'package:daryouz_clone/pages/daryo_pages/privacy_policy_page.dart';
import 'package:daryouz_clone/pages/daryo_pages/social_pages/telegram_daryo_pul_page.dart';
import 'package:daryouz_clone/pages/daryo_pages/social_pages/youtube_daryo_global_page.dart';
import 'package:daryouz_clone/pages/daryo_pages/social_pages/youtube_daryo_page.dart';
import 'package:daryouz_clone/pages/daryo_pages/social_pages/youtube_daryo_rus_page.dart';
import 'package:daryouz_clone/pages/daryo_pages/terms_of_use_page.dart';
import 'package:daryouz_clone/pages/drawer/configure_notifications_page.dart';
import 'package:daryouz_clone/pages/drawer/weather_select_city_page.dart';
import 'package:daryouz_clone/pages/main_page.dart';
import 'package:daryouz_clone/pages/reklama_pages/advertising_placement_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../service/currency_service.dart';
import 'drawer_widget/drawer_widgets.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  List<Currency> currencyList = [];
  String usd = '';
  String rub = '';
  String eur = '';

  void getCurrencyData() {
    getAllCurrency().then((result) {
      currencyList.clear();
      currencyList.addAll(result);

      usd = currencyList.firstWhere((element) => element.code == 'USD').cb_price;
      rub = currencyList.firstWhere((element) => element.code == 'RUB').cb_price;
      eur = currencyList.firstWhere((element) => element.code == 'EUR').cb_price;
      setState(() {});
    });
  }

  @override
  void initState() {
    getCurrencyData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AllController());
    return SafeArea(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Colors.white, border: Border.symmetric(horizontal: BorderSide(color: Colors.black12))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
                    const Text("Sozlamalar"),
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.close_outlined),
                  onPressed: () {
                    Get.to(const MainPage());
                  },
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                color: Colors.white60,
                padding: const EdgeInsets.all(16),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  const SizedBox(height: 10),
                  CategoryIconWidget(
                    text: "Asosiy yangiliklar",
                    icon: Icons.table_chart_rounded,
                    page_number: 0,
                  ),
                  CategoryIconWidget(
                    text: "So'ngi yangiliklar",
                    icon: Icons.horizontal_split_sharp,
                    page_number: 1,
                  ),
                  CategoryIconWidget(
                    text: "Eng ko'p o'qilgan",
                    icon: Icons.remove_red_eye_sharp,
                    page_number: 2,
                  ),
                  CategoryIconWidget(
                    text: "Kolumnistlar",
                    icon: Icons.account_balance,
                    page_number: 3,
                  ),
                  CategoryIconWidget(
                    text: "Multimedia",
                    icon: Icons.play_arrow_outlined,
                    page_number: 0,
                  ),
                  const Divider(),
                  const SizedBox(height: 25),
                  CategoryColorWidget(text: 'Mahalliy', color: Colors.blueAccent),
                  CategoryColorWidget(text: 'Dunyo', color: Colors.tealAccent),
                  CategoryColorWidget(text: 'Madaniyat', color: Colors.yellow),
                  CategoryColorWidget(text: 'Layfstayl', color: Colors.deepPurple),
                  CategoryColorWidget(text: 'Sport', color: Colors.pink),
                  CategoryColorWidget(text: 'Pul', color: Colors.orange),
                  CategoryColorWidget(text: 'Markaziy Osiyo', color: Colors.purpleAccent),
                  const SizedBox(height: 10),
                  const Divider(),
                  const SizedBox(height: 20),
                  CategoryIconWidget(
                      text: "Bildirishnomalarni sozlash", icon: Icons.notifications_none_outlined, page_number: 99),
                  const Divider(),
                  ExpansionTile(
                    tilePadding: const EdgeInsets.only(left: 5),
                    title: const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Daryo",
                          style: TextStyle(fontSize: 15),
                        )),
                    children: [
                      drawerDropdownWidget(text: "Internet-nashr", page: const AboutDaryoPage()),
                      drawerDropdownWidget(text: "Tahririyat", page: const EditorialOfficePage()),
                      drawerDropdownWidget(text: "Aloqa ma'lumotlari", page: const ContactUsPage()),
                      drawerDropdownWidget(text: "Foydalanish shartlari", page: const TermsOfUsePage()),
                      drawerDropdownWidget(text: "Maxfiylik siyosati", page: const PrivacyPolicePage()),
                      drawerDropdownWidget(text: "Yanagiliklar arxivi", page: const NewsArchivePage()),

                      //more child menu
                    ],
                  ),
                  ExpansionTile(
                    tilePadding: const EdgeInsets.only(left: 5),
                    title: const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Reklama",
                          style: TextStyle(fontSize: 15),
                        )),
                    children: [
                      drawerDropdownWidget(text: "Reklama narxlari", page: const AdvertisingPlacementPage()),
                      drawerDropdownWidget(
                          text: "Reklama materiallariga qo'yiladigan texnik talablar",
                          page: const ConfigureNotificatoionsPage()),

                      //more child menu
                    ],
                  ),
                  ExpansionTile(
                    tilePadding: const EdgeInsets.only(left: 5),
                    title: const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Social",
                          style: TextStyle(fontSize: 15),
                        )),
                    children: [
                      drawerSocialWidget(
                        text: "Instagram | Rasmiy",
                        urlLink: 'https://www.instagram.com/daryo.rasmiy/',
                      ),
                      drawerSocialWidget(
                        text: "Instagram | Lifestyle",
                        urlLink: 'https://www.instagram.com/daryo_lifestyle/',
                      ),
                      drawerSocialWidget(
                        text: "Facebook | Rasmiy",
                        urlLink: 'https://m.facebook.com/daryo.yangiliklari?wtsid=rdr_0Anc4WwlfsLtgBLrO',
                      ),
                      drawerSocialWidget(
                        text: "OK | Rasmiy",
                        urlLink: 'https://m.ok.ru/daryo.uz',
                      ),

                      drawerDropdownWidget(text: "YouTube | Rasmiy", page: const YoutubeDaryoPage()),
                      drawerDropdownWidget(text: "YouTube | Daryo Rus", page: const YoutubeDaryoRusPage()),
                      drawerDropdownWidget(text: "YouTube | Daryo Global", page: const YoutubeDaryoGlobalPage()),

                      //more child menu
                    ],
                  ),
                  ExpansionTile(
                    tilePadding: const EdgeInsets.only(left: 5),
                    title: const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Telegram",
                          style: TextStyle(fontSize: 15),
                        )),
                    children: [
                      drawerSocialWidget(
                        text: "Daryo | Rasmiy",
                        urlLink: 'https://t.me/daryo',
                      ),
                      drawerSocialWidget(
                        text: "Daryo | Live",
                        urlLink: 'https://t.me/daryo_live',
                      ),
                      drawerSocialWidget(
                        text: "Daryo | Lifestyle",
                        urlLink: 'https://t.me/daryo_lotin',
                      ),
                      drawerSocialWidget(
                        text: "Daryo | Sport24",
                        urlLink: 'https://t.me/daryo_sport24',
                      ),
                      drawerSocialWidget(
                        text: "Daryo | Rasmiy - Kiril",
                        urlLink: 'https://t.me/daryo_kirill',
                      ),

                      drawerDropdownWidget(text: "Daryo | Pul - O'zbekistonda", page: const TelegramDaryoPulPage()),

                      //more child menu
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        const Text(
                          "USD",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Row(
                          children: [
                            Text(usd),
                            const Icon(
                              Icons.arrow_drop_up_rounded,
                              color: Colors.green,
                            ),
                          ],
                        )
                      ]),
                      Column(children: [
                        const Text(
                          "Rub",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Row(
                          children: [
                            Text(rub),
                            const Icon(
                              Icons.arrow_drop_up_rounded,
                              color: Colors.green,
                            ),
                          ],
                        )
                      ]),
                      Column(children: [
                        const Text(
                          "EUR",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Row(
                          children: [
                            Text(eur),
                            const Icon(
                              Icons.arrow_drop_up_rounded,
                              color: Colors.green,
                            ),
                          ],
                        )
                      ]),
                    ],
                  ),
                ]),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.white, border: Border.symmetric(horizontal: BorderSide(color: Colors.black12))),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 18),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.wb_cloudy_outlined,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 13),
                    Text(
                      controller.cityName,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "${controller.temp_c}⁰C",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WeatherSelectCityPage(),
                          )).then((value) => setState(() {}));
                      // if (result == true) {
                      //   setState(() {});
                      // } else {
                      //   setState(() {});
                      // }
                      // print(result);
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
