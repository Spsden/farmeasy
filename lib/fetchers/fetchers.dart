import 'dart:convert';

import 'package:farmeasy/fetchers/DataModels/fore_cast/current.dart';
import 'package:farmeasy/fetchers/DataModels/fore_cast/forecastday.dart';
import 'package:farmeasy/fetchers/DataModels/fore_cast/location.dart';
import 'package:farmeasy/models/crop_model.dart';
import 'package:http/http.dart';
import 'package:farmeasy/fetchers/DataModels/fore_cast/forecast.dart' as forecast;
import 'DataModels/fore_cast/fore_cast.dart';

String requestAuthority = 'https://crops-api-1pn2.vercel.app';

String weatherKey = 'b82f0e706c1849c39d5140718230903';

String weatherRequestAuthority = 'https://api.weatherapi.com/v1';

class DataSources {
  static Future allresults(int pageNum) async {
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

  static Future getForecast(String location, int days) async {
    //print(location);
    final Response response = await get(Uri.parse(
        '$weatherRequestAuthority/forecast.json?key=$weatherKey&q=$location&days=$days'));

    try {
      if (response.statusCode == 200) {
        print("Yellow");
        Map responseJson = jsonDecode(response.body);
        Location location = Location.fromMap(responseJson['location']);
        Current current = Current.fromMap(responseJson['current']);

        List rofl = responseJson['forecast']['forecastday'];

        List<Forecastday> lol = List<Forecastday>.from(
            rofl.map((e) => Forecastday.fromMap(e)));

        ForeCast foreCast = ForeCast(
            current: current, forecast: lol, location: location);
        print(lol);
        //List<Forecastday> forecastday = responseJson['forecast']['forecastday'].map((e) => );
        //forecast.Forecast forecast = forecast.Forecast.
        //ForeCast foreCast = ForeCast.fromJson(responseJson);

        return foreCast;
        print(location.name);
        // print(current.humidity);
      }
    } catch (e) {
      print(e.toString());
      return ForeCast();
    }


    // print(
    //     '$weatherRequestAuthority/forecast.json?key=$weatherKey&q=$location&days=$days');
    // print(response.body);
  }
}
