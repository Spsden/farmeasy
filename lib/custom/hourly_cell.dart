import 'package:flutter/material.dart';

class HourlyCell extends StatelessWidget {
  final String time;
  final Icon icon;
  final String temp;

  const HourlyCell(
      {Key? key, required this.time, required this.icon, required this.temp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 90,
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor, borderRadius: BorderRadius.circular(8)),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          time,
          style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.white),
        ),
        Container(
          child: icon,
        ),
        Text(
          temp,
          style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.white),
        ),
      ]),
    );
  }
}
