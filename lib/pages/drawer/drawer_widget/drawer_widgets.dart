import 'package:daryouz_clone/controller/all_controller.dart';
import 'package:daryouz_clone/pages/drawer/configure_notifications_page.dart';
import 'package:daryouz_clone/service/url_launcher_all.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: non_constant_identifier_names
Widget CategoryIconWidget(
    {required String text, required icon, required int page_number}) {
  final controller = Get.put(AllController());
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: InkWell(
      onTap: () {
        if (page_number == 99) {
          Get.to(const ConfigureNotificatoionsPage());
        } else {
          // Get.to(() => const MainPage());
          Get.back();

          controller.changeCurrentPage(page_number);
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            width: 10,
          ),
          Icon(
            icon,
            color: Colors.grey,
            size: 22,
          )
        ],
      ),
    ),
  );
}

//////////////////////////////////////////////////////////////////////////
// ignore: non_constant_identifier_names
Widget CategoryColorWidget({required String text, required Color color}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          width: 22,
        ),
        Container(
          color: color,
          width: 4,
          height: 12,
        ),
      ],
    ),
  );
}

//////////////////////////////////////////////////////////////////////////

Widget drawerDropdownWidget({required String text, dynamic page}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 14, right: 18),
    child: Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        child: Text(
          text,
          style: const TextStyle(color: Colors.grey, fontSize: 16),
        ),
        onTap: () {
          Get.to(page);
        },
      ),
    ),
  );
}

//////////////////////////////////////////////////////////////////////////

Widget drawerSocialWidget({required String text, dynamic urlLink}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 14, right: 18),
    child: Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        child: Text(
          text,
          style: const TextStyle(color: Colors.grey, fontSize: 16),
        ),
        onTap: () async {
          await myLaunchUrl(source: "web", text: urlLink);
        },
      ),
    ),
  );
}
