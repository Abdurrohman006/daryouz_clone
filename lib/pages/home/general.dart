import 'package:daryouz_clone/controller/all_controller.dart';
import 'package:daryouz_clone/pages/home/widgets/article_short_form_widget.dart';
import 'package:daryouz_clone/pages/home/widgets/shimmer/default_article_shimmer.dart';
import 'package:daryouz_clone/service/article_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import 'widgets/article_widget.dart';

class GeneralPage extends StatefulWidget {
  const GeneralPage({Key? key}) : super(key: key);

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AllController());
    return FutureBuilder(
      future: ArticleService().getAllArticle(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Container(
            padding: const EdgeInsets.all(8),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  width: MediaQuery.of(context).size.width,
                  height: 52,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.2))),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
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
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  controller.changeIsShort(false);
                                  setState(() {});
                                },
                                icon: const Icon(Icons.video_label_outlined),
                                color: controller.isShort.value == true
                                    ? Colors.grey
                                    : Colors.black),
                            IconButton(
                                onPressed: () {
                                  controller.changeIsShort(true);
                                  setState(() {});
                                },
                                icon: const Icon(Icons.vertical_split),
                                color: controller.isShort.value == false
                                    ? Colors.grey
                                    : Colors.black),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 15,
                    itemBuilder: (context, index) =>
                        controller.isShort.value == true
                            ? articleShortFormWidget(
                                article: snapshot.data?.articles[index])
                            : articleWidget(
                                article: snapshot.data?.articles[index]),
                  ),
                ),
              ],
            ),
          );
        }
        if (snapshot.hasError) {
          return Container(
            child: Center(
              child: Text(snapshot.error.toString()),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  width: MediaQuery.of(context).size.width,
                  height: 52,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.2))),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Bugun",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Shimmer.fromColors(
                                baseColor: Colors.grey,
                                highlightColor: Colors.white,
                                child: Container(
                                  margin: const EdgeInsets.only(left: 8),
                                  decoration: BoxDecoration(
                                      color: Colors.white10,
                                      borderRadius: BorderRadius.circular(4)),
                                  width: 80,
                                  height: 16,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.video_label_outlined),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.vertical_split),
                              color: Colors.grey,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) =>
                      const DefaultArticleShimmer(),
                ),
              ),
            ],
          );
        }
        return const Center(
            child: Text(
          "No data",
          style: TextStyle(fontSize: 20),
        ));
      },
    );
  }
}
