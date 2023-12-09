import 'package:daryouz_clone/components/model/weather_model.dart';
import 'package:daryouz_clone/service/weather_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllController extends GetxController {
  Weather weather = Weather();

  var currentPage = 0.obs;
  var isShort = false.obs;
  var cityName = "Tashkent";
  var temp_c = "0";
  final GlobalKey<ScaffoldState> keyGlobal = GlobalKey();

  changeCurrentPage(int pageNumber) {
    notifyChildrens();
    currentPage.value = pageNumber;
    notifyChildrens();
  }

  changeIsShort(bool value) {
    isShort.value = value;
    notifyChildrens();
  }

//  Drawer/WeatherSelectCityPage

  changeCityName(String cityname) async {
    notifyChildrens();
    cityName = cityname;
    notifyChildrens();
    weather = await GetWeatherDate(cityname);
    temp_c = weather.temperaturaC.toString();
    notifyChildrens();
  }
}

