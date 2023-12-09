import 'package:daryouz_clone/components/components.dart';
import 'package:daryouz_clone/controller/all_controller.dart';
import 'package:daryouz_clone/pages/home/widgets/article_short_form_widget.dart';
import 'package:daryouz_clone/pages/home/widgets/shimmer/default_article_short_shimmer.dart';
import 'package:daryouz_clone/service/article_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class NewsArchivePage extends StatefulWidget {
  const NewsArchivePage({Key? key}) : super(key: key);

  @override
  State<NewsArchivePage> createState() => _NewsArchivePageState();
}

class _NewsArchivePageState extends State<NewsArchivePage> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  String todayFormat = formatDate(DateTime.now());
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AllController());
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white70,
        title: const Text("Arxiv"),
        actions: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.segment))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    width: MediaQuery.of(context).size.width,
                    height: 52,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.2))),
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
                    width: double.infinity,
                    height: 310,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.2))),
                    child: TableCalendar(
                      rowHeight: 38,
                      locale: "en_US",
                      startingDayOfWeek: StartingDayOfWeek.monday,
                      headerStyle: const HeaderStyle(
                          formatButtonVisible: false, titleCentered: true),
                      availableGestures: AvailableGestures.all,
                      firstDay: DateTime.utc(2010, 10, 16),
                      focusedDay: today,
                      lastDay: DateTime.utc(2030, 01, 01),
                      onDaySelected: _onDaySelected,
                      selectedDayPredicate: (day) => isSameDay(day, today),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${formatDate(today)} uchun yangiliklar arxivi",
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text("Faftaning ${today.weekday.toString()}- kuni",
                            style: TextStyle(color: Colors.grey))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            FutureBuilder(
              future: ArticleService().getAllArticle(
                  url:
                      'https://newsapi.org/v2/everything?q=apple&from=${formatDate(today)}&to=${formatDate(today)}&sortBy=popularity&apiKey=73fc718f454843fb8188b86daac3fbb8'),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context, index) =>
                            const DefaultArticleShortShimmer(),
                      ),
                    ],
                  );
                }
                if (snapshot.hasData) {
                  print(snapshot.data?.articles.length);
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: snapshot.data!.articles.isEmpty
                        ? Container(
                            height: 200,
                            child: const Center(
                              child: Text(
                                "Bu kundagi ma'lumotlar hali yo'q",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          )
                        : ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (context, index) =>
                                articleShortFormWidget(
                                    article: snapshot.data?.articles[index]),
                          ),
                  );
                }
                if (snapshot.hasError) {
                  return Container(
                    child: Center(
                      child: Text(snapshot.error.toString()),
                    ),
                  );
                } else {
                  return Container(
                    padding: EdgeInsets.only(top: 100),
                    child: Text(
                      "No data ${snapshot.hasData}",
                      style: TextStyle(fontSize: 18),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
