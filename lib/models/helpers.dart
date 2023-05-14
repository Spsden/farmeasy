import 'dart:io';

import 'package:flutter/material.dart';

const Map<String, Icon> weatherIcon = {
  "Sunny": Icon(Icons.sunny,size: 50,color: Colors.white),
  "Partly cloudy": Icon(Icons.wb_cloudy,size: 50,color: Colors.white),
  "Rainy": Icon(Icons.cloudy_snowing,size: 50,color: Colors.white),
  "Cloudy": Icon(Icons.wb_cloudy_sharp,size: 50,color: Colors.white),
  "Clear": Icon(Icons.light_mode,size: 50,color: Colors.white),
  "Heavy rain": Icon(Icons.cloudy_snowing,size: 50,color: Colors.white),
  "Moderate or heavy rain with thunder"  : Icon(Icons.thunderstorm,color: Colors.white)
};
const Map<String, String> weatherAnimation = {
  "Sunny": "assets/sunny.json",
  "Partly cloudy": "assets/partly_cloudy.json",
  "Rainy": "assets/rain.json",
  "Cloudy": "assets/cloud.json",
  "Clear": "assets/clearsky.json",
  "Heavy rain": "assets/rain.json",
};


class IgnoreCertificateErrorOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = ((X509Certificate cert, String host, int port) {
        return true;
      });
  }
}
