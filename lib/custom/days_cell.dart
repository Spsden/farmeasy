import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../models/helpers.dart';



class DaysCell extends StatelessWidget {
  final String day;
  final String icon;
  final String temp;

  const DaysCell(
      {Key? key, required this.day, required this.icon, required this.temp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
   // print(icon);
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 10),

      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(8)),
      //MediaQuery.of(context).size.height/6,
      //width: MediaQuery.of(context).size.width,
      child: Row(
       // mainAxisAlignment: MainAxisAlignment.,
        children: [
          SizedBox(
           // width: MediaQuery.of(context).size.width*3/5,
            child: Text(

              day,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
            ),
          ),
          const Spacer(),
          SizedBox(
            child: Container(
              child: weatherIcon[icon],
            ),
          ),
          SizedBox(
            width: 40,
          ),

          SizedBox(

            width: 50,


            child: Text(
              temp,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
