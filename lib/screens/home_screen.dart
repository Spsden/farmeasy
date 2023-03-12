import 'package:farmeasy/custom/weather_icon.dart';
import 'package:farmeasy/fetchers/fetchers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Color.fromARGB(30, 128, 128, 128)),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  DataSources.getForecast('new delhi', 1);
                },
                child: Text("Click Me"))
          ],
        ));
  }
}
