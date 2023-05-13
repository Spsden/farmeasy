import 'package:farmeasy/custom/weather_icon.dart';
import 'package:farmeasy/fetchers/fetchers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.black),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: 10, vertical: 10),
              padding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              height: 160,
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(8)),
              child:
                  Column(
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.location_on),
                          SizedBox(width:10),
                          Text(
                            "Delhi",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(width:200),
                          Icon(Icons.share),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.network(
                            'https://thumbs.dreamstime.com/z/colorful-clouds-soft-sunset-sky-file-cleaned-retouched-199572539.jpg',
                            cacheHeight: 100,
                            cacheWidth: 100,
                            height: 100,
                            width: 100,
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Column(
                            children: const [
                               Text(
                                "26 °C",
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.w900),
                              ),
                               Text(
                                "clear",
                                style:  TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],

                  ),


            ),

            SizedBox(
                height: 200,
                width: 200,
                child: Lottie.asset('assets/sunny.json'))
            // Container(
            //   margin: const EdgeInsets.sy
            //   mmetric(
            //       horizontal: 10, vertical: 10),
            //   padding:
            //   const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            //   height: 160,
            //   decoration: BoxDecoration(
            //       color: Theme.of(context).cardColor,
            //       borderRadius: BorderRadius.circular(8)),
            //   child: Column(
            //     children:[
            //      Row(
            //        children: const [
            //          Text(
            //            "Crop Name",
            //            style:  TextStyle(fontSize: 20),
            //          ),
            //        ],
            //      ),
            //       const SizedBox(
            //         height: 12,
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: [
            //          const CircleAvatar(
            //            backgroundImage: NetworkImage('https://thumbs.dreamstime.com/z/colorful-clouds-soft-sunset-sky-file-cleaned-retouched-199572539.jpg'),
            //            radius: 50,
            //            //give here the crop image
            //          ),
            //           const SizedBox(
            //             width: 40,
            //           ),
            //           Column(
            //             children: const [
            //               Text(
            //                 "Duration",
            //                 style:  TextStyle(fontSize: 20),
            //               ),
            //               Text(
            //                 "Varity",
            //                 style:  TextStyle(fontSize: 20),
            //               ),
            //             ],
            //           )
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            // Container(
            //   margin: const EdgeInsets.symmetric(
            //       horizontal: 10, vertical: 10),
            //   padding:
            //   const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            //   height: 180,
            //   decoration: BoxDecoration(
            //       color: Theme.of(context).cardColor,
            //       borderRadius: BorderRadius.circular(8)),
            //   child: Column(
            //     children: [
            //       Row(
            //         children: const [
            //           Text(
            //             "Machine Learning Card",
            //             style:  TextStyle(fontSize: 20),
            //           )
            //         ],
            //       ),
            //       const SizedBox(
            //         height: 12,
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: [
            //           const CircleAvatar(
            //             backgroundImage: NetworkImage('https://thumbs.dreamstime.com/z/colorful-clouds-soft-sunset-sky-file-cleaned-retouched-199572539.jpg'),
            //             radius: 50,
            //             //give here the image for machine learning
            //           ),
            //           const SizedBox(
            //             width: 40,
            //           ),
            //           Column(
            //             children:  [
            //               Text(
            //                 "Healthy percentage",
            //                 style:  TextStyle(fontSize: 20),
            //               ),
            //               Text(
            //                 "Defect in plant",
            //                 style:  TextStyle(fontSize: 20),
            //               ),
            //
            //
            //
            //             ],
            //           )
            //
            //
            //         ],
            //       ),
            //
            //     ],
            //   )
            // ),
          ],
        ));
  }
}
