import 'dart:collection';


import 'package:farmeasy/fetchers/fetchers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../models/helpers.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  // final listOfHours = List.generate(
  //     10,
  //     (index) =>
  //         HourlyCell(time: "12:00", icon: Icon(Icons.sunny), temp: "24"));
  //
  // final listOfDays = List.generate(10,
  //     (index) => DaysCell(day: "Monday", icon: Icon(Icons.sunny), temp: "24"));

  late String x;

  @override
  void initState() {
    super.initState();
    x = "Bye"; //Originally it was hello #ChangesMadeByAbeed
  }

  String dayFromDateCalc(String currDate) {
    final splitted = currDate.split('-');

    Map<int, int> monthMap = {
      1: 3,
      2: 28,
      3: 14,
      4: 4,
      5: 9,
      6: 6,
      7: 11,
      8: 8,
      9: 5,
      10: 10,
      11: 7,
      12: 12,
    };

    Map<int, String> dayMap = {
      0: "Sunday",
      1: "Monday",
      2: "Tuesday",
      3: "Wednesday",
      4: "Thursday",
      5: "Friday",
      6: "Saturday"
    };

    List<int> everyDay = splitted.map(int.parse).toList();
    int yearEnd = int.parse((everyDay[0] / 100).toString().split('.')[1]);
    int month = everyDay[1];
    int day = everyDay[2];
    int centCode = 2;
    int a = yearEnd ~/ 12;
    int b = yearEnd % 12;
    int c = b ~/ 4;

    int ans = (a + b + c + centCode) % 7;

    int absVal = (monthMap[month]! - day).abs();
    ans = (ans + absVal) % 7;

    return dayMap[ans] ?? 'na';
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: FutureBuilder(
        future: DataSources.getForecast('Delhi', 7),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            // ForeCast foreCast = snapshot.data;
            // print(snapshot.data.toString() + "this is what m taliing about");
           // // print(foreCast.current?.cloud.toString());
           //  String forecastCondition =
           //      foreCast.current?.condition?.text.toString() ??
           //          'assets/cloud.json';
           //  print(weatherAnimation['Sunny'].toString());




            print("jkhsdhdjhfs");
            return ListView(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              physics: const BouncingScrollPhysics(),
              children: [
                const Text(
                  "  Weather Forecast",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                // Column(
                //   children: [
                //     Container(
                //       margin: const EdgeInsets.symmetric(
                //           horizontal: 10, vertical: 10),
                //       padding: const EdgeInsets.symmetric(
                //           horizontal: 10, vertical: 7),
                //       height: 180,
                //       decoration: BoxDecoration(
                //           color: Theme.of(context).cardColor,
                //           borderRadius: BorderRadius.circular(8)),
                //       child: Column(
                //         children: [
                //           Row(
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             children: [
                //               Row(
                //                 children: [
                //                   const Icon(
                //                     Icons.location_on,
                //                     color: Colors.white,
                //                   ),
                //                   const SizedBox(width: 8),
                //                   Text(
                //                     foreCast.location?.name ?? 'NA',
                //                     style: const TextStyle(
                //                         fontSize: 20, color: Colors.white),
                //                   )
                //                 ],
                //               ),
                //               const Icon(Icons.share, color: Colors.white)
                //             ],
                //           ),
                //           const SizedBox(
                //             height: 12,
                //           ),
                //           Row(
                //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //               children: [
                //                 SizedBox(
                //                   width: 120,
                //                   height: 120,
                //                   // child: Lottie.asset(
                //                   //   weatherAnimation[forecastCondition]!,
                //                   // ),
                //                 ),
                //                 Column(
                //                   children: [
                //                     Text(
                //                       '${foreCast.current?.tempC.toString()} °C' ??
                //                           'NA',
                //                       style: const TextStyle(
                //                           fontSize: 35,
                //                           fontWeight: FontWeight.w900,
                //                           color: Colors.white),
                //                     ),
                //                     Text(
                //                       foreCast.current?.condition?.text ?? 'NA',
                //                       style: const TextStyle(
                //                           fontSize: 20, color: Colors.white),
                //                     )
                //                   ],
                //                 ),
                //               ])
                //         ],
                //       ),
                //     )
                //   ],
                // ),
                // // const WeatherCard(),
                // Container(
                //   margin:
                //       const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                //   padding:
                //       const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                //   height: 160,
                //   decoration: BoxDecoration(
                //       color: Theme.of(context).cardColor,
                //       borderRadius: BorderRadius.circular(8)),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Column(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           dataCell(
                //               context,
                //               const Icon(
                //                 Icons.thermostat,
                //                 color: Colors.white,
                //               ),
                //               'Atm Pressure',
                //               foreCast.current?.pressureMb.toString() ?? "12 atm"),
                //           dataCell(
                //               context,
                //               const Icon(Icons.wb_sunny_sharp,
                //                   color: Colors.white),
                //               ' SunRise',
                //               foreCast.forecast?[0].astro?.sunrise.toString() ??
                //                   'NA'),
                //           dataCell(
                //               context,
                //               const Icon(Icons.wind_power, color: Colors.white),
                //               'Wind Speed',
                //               foreCast.current!.windKph.toString() ?? 'na')
                //         ],
                //       ),
                //       Column(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           dataCell(
                //               context,
                //               const Icon(Icons.cloud, color: Colors.white),
                //               ' Rain',
                //               foreCast.forecast?[0].day?.dailyChanceOfRain
                //                       .toString() ??
                //                   'NA'),
                //           dataCell(
                //               context,
                //               const Icon(Icons.sunny_snowing,
                //                   color: Colors.white),
                //               ' Sunset',
                //               foreCast.forecast?[0].astro?.sunset.toString() ??
                //                   'NA'),
                //           dataCell(
                //               context,
                //               const Icon(Icons.water_drop, color: Colors.white),
                //               ' Humidity',
                //               foreCast.current?.humidity.toString() ?? 'NA')
                //         ],
                //       )
                //     ],
                //   ),
                // ),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //   const Text(
                //     "   Hourly Forecast",
                //     style: TextStyle(
                //         fontSize: 23,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.white),
                //   ),
                //   Container(
                //       margin: const EdgeInsets.symmetric(
                //           horizontal: 10, vertical: 10),
                //       padding: const EdgeInsets.symmetric(
                //           horizontal: 5, vertical: 8),
                //       //  suraj code from here
                //       height: 130,
                //       child: ListView.builder(
                //         itemCount: foreCast.forecast?[0].hour?.length,
                //         scrollDirection: Axis.horizontal,
                //         padding: const EdgeInsets.symmetric(horizontal: 10),
                //         physics: const BouncingScrollPhysics(),
                //         itemBuilder: (context, index) {
                //           Hour hour = foreCast.forecast![0].hour![index];
                //           String wIcon = hour.condition?.text ?? 'Rainy';
                //
                //           return Container(
                //               margin: const EdgeInsets.symmetric(horizontal: 5),
                //               child: HourlyCell(
                //                 icon: weatherIcon[wIcon] ??
                //                     const Icon(Icons.cloudy_snowing,
                //                         color: Colors.white),
                //                 temp: hour.tempC.toString(),
                //                 time: hour.time.toString(),
                //               ));
                //         },
                //       )),
                //   Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       const Text(
                //         "   7 Days Forecast",
                //         textAlign: TextAlign.center,
                //         style: TextStyle(
                //             fontSize: 23,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.white),
                //       ),
                //       Container(
                //           margin: const EdgeInsets.symmetric(
                //               horizontal: 10, vertical: 10),
                //
                //           //child:listOfDays[0]
                //
                //           child: ListView.builder(
                //             shrinkWrap: true,
                //             itemCount: foreCast.forecast?.length ?? 10,
                //             scrollDirection: Axis.vertical,
                //             padding: const EdgeInsets.symmetric(horizontal: 10),
                //             physics: const BouncingScrollPhysics(),
                //             itemBuilder: (context, index) {
                //               final String date =
                //                   foreCast.forecast![index].date.toString();
                //               String day = dayFromDateCalc(date);
                //
                //               final String temp = foreCast
                //                       .forecast![index].day!.avgtempC
                //                       .toString() ??
                //                   'NA';
                //
                //               String iconType = foreCast
                //                   .forecast![index].day!.condition!.text
                //                   .toString();
                //
                //               if (!weatherIcon.containsKey(iconType)) {
                //                 iconType = "Rainy";
                //               }
                //
                //               //List<String> iconTypes = ["Sunny","Partly cloudy","Cloudy","Clear"]
                //
                //               return Container(
                //                   margin:
                //                       const EdgeInsets.symmetric(vertical: 5),
                //                   child: DaysCell(
                //                       day: day, icon: iconType, temp: temp));
                //             },
                //           ))
                //     ],
                //   )
                // ])
              ],
            );
          }

          if (snapshot.hasError) {
            return const Placeholder();
          } else {
            return const SizedBox(
                 child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Widget dataCell(BuildContext context, Icon icon, String name, String data) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            icon,
            Text(
              name,
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
        Text(
          data,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
