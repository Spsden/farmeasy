import 'package:farmeasy/screens/weather_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WeatherCard extends StatefulWidget {
  const WeatherCard({super.key});

  @override
  State<WeatherCard> createState() => _WeatherCardState();
}

class _WeatherCardState extends State<WeatherCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("hello");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const WeatherScreen()),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
        height: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on),
                SizedBox(
                width: 8
                ),
                Text("Orange House",
                style: TextStyle(fontSize: 20),)
                  ],
                ),
                Icon(Icons.share)
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             
              children: [
              Image.network('https://thumbs.dreamstime.com/z/colorful-clouds-soft-sunset-sky-file-cleaned-retouched-199572539.jpg',
              cacheHeight: 80,
              cacheWidth: 80,
              height: 80,
              width: 80,),
              Column( children: [
                Text("Test 2",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),),
                Text("Test 2",
                style: TextStyle(fontSize: 10),
                )
              ],),
              Column(children: [
                 Text("Test 1")
              ],)
    
              
            ],)
          ],
        ),
      )
    );
  }
}
