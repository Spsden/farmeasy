import 'dart:convert';

import 'package:farmeasy/fetchers/DataModels/fore_cast/current.dart';
import 'package:farmeasy/fetchers/DataModels/fore_cast/forecastday.dart';
import 'package:farmeasy/fetchers/DataModels/fore_cast/location.dart';
import 'package:farmeasy/fetchers/crops_data_model.dart';
import 'package:farmeasy/models/crop_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:farmeasy/fetchers/DataModels/fore_cast/forecast.dart'
    as forecast;
import 'DataModels/fore_cast/fore_cast.dart';

String requestAuthority = 'https://crops-l107jvl93-devesh-23.vercel.app/';

//String weatherKey = 'b82f0e706c1849c39d5140718230903';
String weatherKey = '97a7732044754cada9d203310231305';

String weatherRequestAuthority = 'https://api.weatherapi.com/v1';

class DataSources {
  static Future allResults() async {
    final Response response = await get(Uri.parse('$requestAuthority/all'));

    try {
      if (response.statusCode == 200) {
        //print(response.body);
        // print(response.body.runtimeType);
        List<CropData> list = cropDataFromJson(response.body);
        //print(list);
        return list;
      } else {
        // print(response.statusCode);
        print("error");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  static Future fetchSchemes(String pageNum) async {
    final headers = {"occupation": "1"};
    final Response response = await post(Uri.parse(
        'https://keyword.vikaspedia.in/keyword/schemes/search?lgn=en&pageno=$pageNum&size=9'));
  }

  static Future fetchCrops(String pageNum) async {
    try {
      final Response response = await get(Uri.parse(
          'https://www.growstuff.org/crops?page=$pageNum&format=json'));
      if (response.statusCode == 200) {
        // print(response.body);

        List<CropsData> list = cropsDataFromMap(response.body);
        // print(response.body.runtimeType);

        // list.forEach((element) {print(element.name);});

        // print(list.first.name);
        return list;
      } else {
        // print(response.statusCode);
        debugPrint("error");
      }
    } catch (e) {
      rethrow;
    }
  }

  static Future getForecast(String location, int days) async {
    //print(location);

    try {
      final Response response = await get(Uri.parse(
          '$weatherRequestAuthority/forecast.json?key=$weatherKey&q=$location&days=7'));
      if (response.statusCode == 200) {
        Map responseJson = jsonDecode(response.body);
        Location location = Location.fromMap(responseJson['location']);
        Current current = Current.fromMap(responseJson['current']);

        List rofl = responseJson['forecast']['forecastday'];

        List<Forecastday> lol =
            List<Forecastday>.from(rofl.map((e) => Forecastday.fromMap(e)));

        ForeCast foreCast =
            ForeCast(current: current, forecast: lol, location: location);

        return foreCast;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      return ForeCast();
    }
  }
}
