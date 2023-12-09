import 'package:daryouz_clone/controller/all_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeatherSelectCityPage extends StatefulWidget {
  const WeatherSelectCityPage({Key? key}) : super(key: key);

  @override
  State<WeatherSelectCityPage> createState() => _WeatherSelectCityPageState();
}

class _WeatherSelectCityPageState extends State<WeatherSelectCityPage> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AllController());
    print(controller.cityName);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, true);
          },
          icon: Icon(Icons.arrow_back),
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white70,
        title: const Text(
          "SELECT CITY",
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        actions: [
          IconButton(
              icon: const Icon(Icons.close_outlined),
              onPressed: () {
                Navigator.pop(context, true);
              }),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: "Nukus",
                            groupValue: controller.cityName,
                            onChanged: (value) {
                              setState(() {
                                controller.changeCityName(value.toString());
                              });
                            },
                          ),
                          Container(width: 80, child: Text("Nukus")),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: "Samarqand",
                            groupValue: controller.cityName,
                            onChanged: (value) {
                              setState(() {
                                controller.changeCityName(value.toString());
                              });
                            },
                          ),
                          Container(width: 80, child: Text("Samarqand")),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: "Buxoro",
                            groupValue: controller.cityName,
                            onChanged: (value) {
                              setState(() {
                                controller.changeCityName(value.toString());
                              });
                            },
                          ),
                          Container(width: 80, child: Text("Buxoro")),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: "Urganch",
                            groupValue: controller.cityName,
                            onChanged: (value) {
                              setState(() {
                                controller.changeCityName(value.toString());
                              });
                            },
                          ),
                          Container(width: 80, child: Text("Urganch")),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: "Sirdaryo",
                            groupValue: controller.cityName,
                            onChanged: (value) {
                              setState(() {
                                controller.changeCityName(value.toString());
                              });
                            },
                          ),
                          Container(width: 80, child: Text("Sirdaryo")),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: "Namangan",
                            groupValue: controller.cityName,
                            onChanged: (value) {
                              setState(() {
                                controller.changeCityName(value.toString());
                              });
                            },
                          ),
                          Container(width: 80, child: Text("Namangan")),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: "Farghona",
                            groupValue: controller.cityName,
                            onChanged: (value) {
                              setState(() {
                                controller.changeCityName(value.toString());
                              });
                            },
                          ),
                          Container(width: 80, child: Text("Farg'ona")),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: "Termiz",
                            groupValue: controller.cityName,
                            onChanged: (value) {
                              setState(() {
                                controller.changeCityName(value.toString());
                              });
                            },
                          ),
                          Container(width: 80, child: Text("Termiz")),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: "Qarshi",
                            groupValue: controller.cityName,
                            onChanged: (value) {
                              setState(() {
                                controller.changeCityName(value.toString());
                              });
                            },
                          ),
                          Container(width: 80, child: Text("Qarshi")),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: "Toshkent vil",
                            groupValue: controller.cityName,
                            onChanged: (value) {
                              setState(() {
                                controller.changeCityName(value.toString());
                              });
                            },
                          ),
                          Container(width: 80, child: Text("Toshkent vil")),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: "Tashkent",
                            groupValue: controller.cityName,
                            onChanged: (value) {
                              setState(() {
                                controller.changeCityName(value.toString());
                              });
                            },
                          ),
                          Container(width: 80, child: Text("Tashkent")),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: "Navoiy",
                            groupValue: controller.cityName,
                            onChanged: (value) {
                              setState(() {
                                controller.changeCityName(value.toString());
                              });
                            },
                          ),
                          Container(width: 80, child: Text("Navoiy")),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: "Jizzax",
                            groupValue: controller.cityName,
                            onChanged: (value) {
                              setState(() {
                                controller.changeCityName(value.toString());
                              });
                            },
                          ),
                          Container(width: 80, child: Text("Jizzax")),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: "Andijon",
                            groupValue: controller.cityName,
                            onChanged: (value) {
                              setState(() {
                                controller.changeCityName(value.toString());
                              });
                            },
                          ),
                          Container(width: 80, child: Text("Andijon")),
                        ],
                      ),
                    ],
                  ),
                ],
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
                      SizedBox(width: 13),
                      Text(
                        controller.cityName,
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "${controller.temp_c}⁰C",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context, true);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.grey,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
