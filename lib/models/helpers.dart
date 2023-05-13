import 'package:flutter/material.dart';

const Map<String, Icon> weatherIcon = {
  "Sunny": Icon(Icons.sunny),
  "Partly cloudy": Icon(Icons.wb_cloudy),
  "Rainy": Icon(Icons.cloudy_snowing),
  "Cloudy": Icon(Icons.wb_cloudy_sharp),
  "Clear": Icon(Icons.light_mode),
  "Heavy rain": Icon(Icons.cloudy_snowing),
  "Moderate or heavy rain with thunder"  : Icon(Icons.thunderstorm)
};
const Map<String, String> weatherAnimation = {
  "Sunny": "assets/sunny.json",
  "Partly cloudy": "assets/partly_cloudy.json",
  "Rainy": "assets/rain.json",
  "Cloudy": "assets/cloud.json",
  "Clear": "assets/clearsky.json",
  "Heavy rain": "assets/rain.json",
};
