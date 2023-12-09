import 'package:daryouz_clone/components/hive_model/messages_madel.dart';
import 'package:daryouz_clone/pages/daryo_pages/messages_contact_us_page/messages_contact_us_page.dart';
import 'package:daryouz_clone/service/url_launcher_all.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hive/hive.dart';

import '../../constants/color.dart';

const LatLng currentLocation = LatLng(41.293474, 69.260184);

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  late GoogleMapController _mapController;
  final Map<String, Marker> _markers = {};

  TextEditingController emailContr = TextEditingController();
  bool _validateEmail = false;

  TextEditingController textContr = TextEditingController();
  bool _validateText = false;

  @override
  void dispose() {
    emailContr.dispose();
    textContr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mybox = Hive.box("allMessages");
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white70,
          title: const Text("Tahririyat kontaklari"),
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
                            "Aloqa ma'lumotlari",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.all(18),
                                child: const Icon(
                                  Icons.location_on_outlined,
                                  size: 26,
                                  color: Colors.grey,
                                )),
                            const Text(
                              "100000, Toshkent sh.,Yakkasaroy tumani\nBog'idil ko'chasi 42/2",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 18),
                                child: const Icon(
                                  Icons.watch_later_outlined,
                                  size: 26,
                                  color: Colors.grey,
                                )),
                            const Text(
                              "Dushanba - Juma: 9:00 dan 18:00 gacha",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.all(18),
                                child: const Icon(
                                  Icons.share_outlined,
                                  size: 26,
                                  color: Colors.grey,
                                )),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      TextButton.icon(
                                          onPressed: () async {
                                            await myLaunchUrl(
                                                source: "web",
                                                text: "https://t.me/Daryo");
                                          },
                                          icon: const Icon(
                                              Icons.telegram_outlined),
                                          label: const Text(
                                            "Telegram",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12),
                                          )),
                                      TextButton.icon(
                                          onPressed: () async {
                                            await myLaunchUrl(
                                                source: "web",
                                                text:
                                                    "https://m.facebook.com/daryo.yangiliklari?wtsid=rdr_0AgCXBPIxhlNkOvml");
                                          },
                                          icon: Image.asset(
                                              'assets/images/facebook.png',
                                              width: 30),
                                          label: const Text(
                                            "Facebook",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      TextButton.icon(
                                          onPressed: () async {
                                            await myLaunchUrl(
                                                source: "web",
                                                text:
                                                    "https://m.ok.ru/daryo.uz");
                                          },
                                          icon: Image.asset(
                                              'assets/images/odnoklassniki.png',
                                              width: 18),
                                          label: const Text(
                                            "Одноклассники",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12),
                                          )),
                                      TextButton.icon(
                                          onPressed: () async {
                                            await myLaunchUrl(
                                                source: "web",
                                                text:
                                                    "https://www.instagram.com/");
                                          },
                                          icon: Image.asset(
                                              'assets/images/instagram.png',
                                              width: 18),
                                          label: const Text(
                                            "Instagram",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12),
                                          )),
                                    ],
                                  ),
                                ]),
                          ],
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.all(18.0),
                          child: const Text(
                            "Tahririyat",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 18),
                                child: const Icon(
                                  Icons.wifi_calling_outlined,
                                  size: 26,
                                  color: Colors.grey,
                                )),
                            GestureDetector(
                              onTap: () async {
                                await myLaunchUrl(
                                    source: "tel", text: "+998908307175");
                              },
                              child: const Text(
                                "+998 90 830 71 75",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 18),
                                child: const Icon(
                                  Icons.mail_outline_sharp,
                                  size: 26,
                                  color: Colors.grey,
                                )),
                            GestureDetector(
                              onTap: () async {
                                await myLaunchUrl(
                                    source: "email",
                                    text: "aleks333aaa@gmail.com");
                              },
                              child: const Text(
                                "info@simple.uz",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 9),
                        Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.all(18.0),
                          child: const Text(
                            "Reklama bo'limi",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 18),
                                child: const Icon(
                                  Icons.wifi_calling_outlined,
                                  size: 26,
                                  color: Colors.grey,
                                )),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    await myLaunchUrl(
                                        source: "tel", text: "+998712096777");
                                  },
                                  child: const Text(
                                    "+998 71 209 67 77, ",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    await myLaunchUrl(
                                        source: "tel", text: "+998901850393");
                                  },
                                  child: const Text(
                                    "+998 90 185 03 93",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 18,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(18),
                    width: double.infinity,
                    color: Colors.grey.withOpacity(0.2),
                    child: const Text(
                      "Agar sizda savollar bo'lsa\nBizga murojat qilishingiz mumkin:",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 10, right: 16, left: 16, bottom: 24),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.2))),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 10),
                          margin: null,
                          height: 45,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: _validateEmail
                                      ? Colors.red
                                      : Colors.grey.withOpacity(0.2))),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            controller: emailContr,
                            decoration: const InputDecoration(
                              hintText: "Sizning e-mail",
                              hintStyle: TextStyle(fontSize: 12),
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Icon(Icons.email_outlined,
                                    color: Colors.grey, size: 20),
                              ),
                              border: InputBorder.none,
                              // label: Text("Sizning e-mail"),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.only(bottom: 10),
                          margin: null,
                          height: 45,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: _validateText
                                      ? Colors.red
                                      : Colors.grey.withOpacity(0.2))),
                          child: TextField(
                            controller: textContr,
                            decoration: const InputDecoration(
                              hintText: "Xat matni..",
                              hintStyle: TextStyle(fontSize: 12),
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Icon(Icons.sms_outlined,
                                    color: Colors.grey, size: 20),
                              ),
                              border: InputBorder.none,
                              // label: Text("Sizning e-mail"),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.all(18),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.withOpacity(0.2))),
                          child: Center(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  emailContr.text.isEmpty
                                      ? _validateEmail = true
                                      : _validateEmail = false;
                                  textContr.text.isEmpty
                                      ? _validateText = true
                                      : _validateText = false;
                                });

                                if ((_validateEmail && _validateText) ==
                                    false) {
                                  // print("add boldi__________________");
                                  mybox.add(MessagesModel(
                                      email: emailContr.text,
                                      text: textContr.text,
                                      time: DateTime.now().toString()));
                                  emailContr.clear();
                                  textContr.clear();

                                  setState(() {});
                                }
                              },
                              child: const Text(
                                "YUBORISH",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(18),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.withOpacity(0.2))),
                          child: ElevatedButton(
                            child: Text("barcha xabarlar"),
                            onPressed: () {
                              Get.to(() => const MessagesContactUsPage());
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(1),
                    width: double.infinity,
                    height: 280,
                    // color: Colors.grey.withOpacity(0.2),
                    child: GoogleMap(
                      initialCameraPosition:
                          CameraPosition(target: currentLocation, zoom: 13),
                      onMapCreated: (controller) {
                        _mapController = controller;
                        addMarker("test", currentLocation);
                      },
                      markers: _markers.values.toSet(),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(18),
                    width: double.infinity,
                    color: Colors.grey.withOpacity(0.2),
                    child: const Text(
                      "Xaritada ko'ring",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 8),
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
                  ),
                  const SizedBox(height: 18),
                ],
              ),
            ),
          ),
        ));
  }

  // Goole Maps uchun Funksiya
  addMarker(String id, LatLng location) {
    var marker = Marker(
      markerId: MarkerId(id),
      position: location,
    );
    _markers[id] = marker;
    setState(() {});
  }
}
