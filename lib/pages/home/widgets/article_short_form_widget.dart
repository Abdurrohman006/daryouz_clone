// ignore_for_file: camel_case_types

import 'dart:math';

import 'package:daryouz_clone/components/components.dart';
import 'package:daryouz_clone/components/model/article_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class articleShortFormWidget extends StatelessWidget {
  Article article;

  articleShortFormWidget({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (article.title == "no data") {
      return Container();
    } else {
      return InkWell(
        onTap: () async {
          if (!await launchUrl(
            Uri.parse(article.url.toString()),
            mode: LaunchMode.inAppWebView,
            webViewConfiguration: const WebViewConfiguration(
                headers: <String, String>{"my_header_key": "my_header_value"}),
          )) {
            throw "Could not launch${article.url}";
          }
        },
        child: Container(
          margin: const EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.2))),
          width: double.infinity,
          height: 180,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 8),
                      color: Colors.tealAccent,
                      width: 4,
                      height: 12,
                    ),
                    Text(
                      article.source!.name.toString(),
                      style: const TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 24),
                        child: Text(
                          maxLines: 4,
                          article.title.toString(),
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(article.urlToImage.toString()),
                            fit: BoxFit.cover),
                      ),
                      height: 75,
                      width: 115,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        // "${DateTime.parse(article.publishedAt.toString()).hour}:${DateTime.parse(article.publishedAt.toString()).minute}",
                        "${formatDate(DateTime.parse(article.publishedAt.toString()))} ${DateFormat('Hm').format(DateTime.parse(article.publishedAt.toString()))}",
                        style: const TextStyle(color: Colors.grey)),
                    Row(
                      children: [
                        const Icon(
                          size: 19,
                          Icons.remove_red_eye_outlined,
                          color: Colors.grey,
                        ),
                        Text(
                          "  ${Random().nextInt(1000).toString()}",
                          style: const TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }
  }
}
