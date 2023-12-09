import 'package:daryouz_clone/constants/image.dart';
import 'package:daryouz_clone/controller/all_controller.dart';
import 'package:daryouz_clone/pages/drawer/drawer_page.dart';
import 'package:daryouz_clone/pages/home/columnists.dart';
import 'package:daryouz_clone/pages/home/general.dart';
import 'package:daryouz_clone/pages/home/newest.dart';
import 'package:daryouz_clone/pages/home/top_news.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

bool isShort = false;

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AllController());
    List<Widget> pages = [
      GeneralPage(),
      NewestPage(),
      TopPage(),
      ColumnistsPage()
    ];
    return Scaffold(
        key: _key,
        endDrawer: Drawer(width: double.infinity, child: DrawerPage()),
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          actions: [
            Image.asset(AppImage.app_image),
            const SizedBox(
              width: 110,
            ),
            IconButton(
                onPressed: () {
                  _key.currentState?.openEndDrawer();
                },
                icon: const Icon(Icons.segment))
          ],
        ),
        body: Obx(() => SafeArea(child: pages[controller.currentPage.value])),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.currentPage.value,
            onTap: (value) {
              setState(() {});
              controller.changeCurrentPage(value);
            },
            type: BottomNavigationBarType.fixed,
            // fixedColor: Colors.blueAccent,
            selectedItemColor: Colors.blueAccent,
            // backgroundColor: Colors.redAccent,
            // unselectedItemColor: Colors.black,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.horizontal_split_sharp), label: "Asosiy"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.table_chart), label: "So'nggi"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.remove_red_eye_sharp),
                  label: "Eng ko'p o'qilgan"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance), label: "Kolumnistlar"),
            ],
          ),
        ));
  }
}
