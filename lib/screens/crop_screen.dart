import 'package:farmeasy/fetchers/fetchers.dart';
import 'package:farmeasy/main.dart';
import 'package:farmeasy/models/crop_model.dart';
import 'package:farmeasy/screens/crop.dart';
import 'package:flutter/material.dart';

class CropScreen extends StatefulWidget {
  const CropScreen({super.key});

  @override
  State<CropScreen> createState() => _CropScreenState();
}

class _CropScreenState extends State<CropScreen> {
  List<CropData> crops = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text(
          "All Crops Data",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        Column(
          children: [
            //your selected crops
            Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                height: 180,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Selected Crops ",
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Text(
                                "My Crops",
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          // Row(
                          //   children:[
                          //     Column(
                          //       children: [
                          //         Image.network(
                          //           'data:image/jpeg;base64,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',
                          //           cacheHeight: 20,
                          //           cacheWidth: 20,
                          //           height: 20,
                          //           width: 20,
                          //         ),
                          //       ],
                          //     ),
                          //     Column(
                          //       children: const [
                          //         Text(
                          //           "Crop Name",
                          //           style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                          //         )
                          //       ],
                          //     ),
                          //   ]
                          // ),
                        ],
                      )
                    ],
                  )
                ])),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                // padding:
                // const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        "Crop Name", //#ChangesMadeByAbeed
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: const [
                          Text(
                            "Duration                   ",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Text(
                            "Variety",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  )

                  // Row(
                  //   child: const Center(
                  //     child: Text(
                  //       "Zubin Maal",
                  //       textAlign: TextAlign.center,
                  //       style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  //     ),
                  //   ),
                  // ),
                ],
              ),

              //second
            ),
            InkWell(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => CropDetailsPage()));
              },
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  // padding:
                  // const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Crop Name", //#ChangesMadeByAbeed
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: const [
                            Text(
                              "Duration                   ",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              "Varity",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    )

                    // Row(
                    //   child: const Center(
                    //     child: Text(
                    //       "Zubin Maal",
                    //       textAlign: TextAlign.center,
                    //       style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),

                //second
              ),
            ),
          ],
        )
      ],
    );
  }
}
