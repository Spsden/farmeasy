import 'dart:convert';
import 'dart:io';

import 'package:farmeasy/fetchers/crops_data_model.dart';
import 'package:farmeasy/fetchers/schemes_data_model.dart';
import 'package:farmeasy/models/crop_model.dart';
import 'package:farmeasy/models/helpers.dart';
import 'package:farmeasy/models/weather_models/weather_model/weather_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

String requestAuthority = 'https://cropsdata-rhtgnkkbh-devesh-23.vercel.app';

//String weatherKey = 'b82f0e706c1849c39d5140718230903';
String weatherKey = '0301fb55825c4c60814111805241702';

String weatherRequestAuthority = 'https://api.weatherapi.com/v1';

class DataSources {
  static Future allResults(String query) async {
    final Response response = await get(Uri.parse('$requestAuthority/all'));

    try {
      if (response.statusCode == 200) {
        //print(response.body);
        // print(response.body.runtimeType);
        List<CropData> list = cropDataFromJson(response.body);

        List<CropData> newList = [];
        for (var element in list) {
          final areaList = element.recommendedZone
              .split(',')
              .map((e) => e.toLowerCase().trim())
              .toList();

          // print(areaList);

          String x = query;
          bool exists = areaList
              .any((string) => string.toLowerCase().contains(x.toLowerCase()));
          if (exists) {
            newList.add(element);
          }
          // else {
          //   print('The string "$x" does not exist in the list.');
          // }

          // bool exists = areaList.any((element) => areaList.contains(query));
          // print(exists);
          // if (exists) {
          //   print("yes");
          // } else {
          //   print("no");
          // }
        }
        print(newList);

        return newList;
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
    print("taoooed");
    try {
      final Response response = await HttpOverrides.runWithHttpOverrides(
          () => post(Uri.parse(
              'https://keyword.vikaspedia.in/keyword/schemes/search?lgn=en&pageno=1&size=9')),
          IgnoreCertificateErrorOverrides());

      if (response.statusCode == 200) {
        SchemesModel schemesModel = schemesModelFromJson(response.body);
        print(schemesModel.items[1].title);
        return schemesModel.items;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  static Future fetchCrops(String pageNum) async {
    try {
      final Response response = await get(Uri.parse(
          'https://www.growstuff.org/crops?page=$pageNum&format=json'));
      if (response.statusCode == 200) {
        // print("hiiiiiii");

        // print(response.body.toString() + "hello world ");
        //print(response.body.runtimeType);
        var allQueryList = jsonDecode(response.body);
        //print(allQueryList);

        List<CropsData> list =
            cropsDataFromMap(json.encode(allQueryList['query']));
        //  List<CropsData> list = [];
        //  print(list.runtimeType);
        // print(response.body.runtimeType);

        // list.forEach((element) {print(element.name);});

        // print(list.first.name);
        return list;
      } else {
        // print(response.statusCode);
        debugPrint("error");
      }
    } catch (e) {
      //print(e.toString());
      rethrow;
    }
  }

  static Future<String> getPriceData(String location) async {
    try {
      final Response response = await get(Uri.parse(
          "https://vegetablemarketprice.com/api/dataapi/market/bangalore/daywisedata?date=2024-02-16"));

      if(response.statusCode == 200){
        return response.body;
      } else{
        return "LOL no data received";
      }
    } catch (e, stackTrack) {
      return "Lol no data ";
    }
  }

  static Future getForecast(String location, int days) async {
    //print(location);

    try {
      final Response response = await get(Uri.parse(
          '$weatherRequestAuthority/forecast.json?key=$weatherKey&q=$location&days=7'));
      //print("he;;p wprd");
      if (response.statusCode == 200) {
        Map<String, dynamic> responseJson = jsonDecode(response.body);

        print(response.body);
        //  print(responseJson.toString());

        WeatherModel weatherModel = WeatherModel.fromJson(responseJson);
        //    Location location = Location.fromMap(responseJson['location']);
        //    Current current = Current.fromMap(responseJson['current']);
        //    // print(current.toString());
        //
        //    List rofl = responseJson['forecast']['forecastday'];
        //
        //   print("rofl is working");
        // /// print(rofl.toString());
        //
        //  rofl.forEach((element) {print(element.toString());});
        //  print("forecasting");
        //    List<Forecastday> lol =
        //        List<Forecastday>.from(rofl.map((e) => Forecastday.fromMap(e)));
        //
        //
        //    print(lol.toString() + "this is lol");
        //    print("working");
        //    ForeCast foreCast =
        //        ForeCast(current: current, forecast: lol, location: location);
        //
        //   print(foreCast.current?.lastUpdated.toString());

        return weatherModel;
      }
    } catch (e, stacktrace) {
      if (kDebugMode) {
        print(stacktrace);
        print(e);
      }
      return WeatherModel();
    }
  }
}
