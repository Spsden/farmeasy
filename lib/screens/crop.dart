import 'package:cached_network_image/cached_network_image.dart';
import 'package:farmeasy/fetchers/crops_data_model.dart';


import 'package:flutter/material.dart';

class CropDetailsPage extends StatelessWidget {
  final CropsData cropsData;
  const CropDetailsPage({Key? key, required this.cropsData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(

      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            stretch: true,
            stretchTriggerOffset: 150.0,

            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                cropsData.name.toUpperCase(),
              ),
              collapseMode: CollapseMode.parallax,

              stretchModes: const [
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
              background:CachedNetworkImage(
                height: 150,
                fit: BoxFit.fill,
                width: 200,
                // filterQuality: FilterQuality.medium,

                imageUrl: cropsData.thumbnailUrl ??
                    "https://i.imgur.com/3jcYAZR.jpg",
                progressIndicatorBuilder:
                    (context, url, downloadProgress) =>
                    CircularProgressIndicator(
                        value: downloadProgress.progress),
                errorWidget: (context, url, error) =>
                const Icon(Icons.error),
              ),
            ),
          ),
          // const SizedBox(
          //   height: 25,
          // ),
          SliverFillRemaining(
            child: Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Description: ${ cropsData.description ?? 'NA'} ",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Scientific Name:  ${ cropsData.scientificName.toString()}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Total Ways of Harvesting: ${cropsData.harvestsCount.toString()}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),



                  // Text("beeep"),
                  // Text("beeep"),
                  // Text("beeep"),
                  // Text("beeep"),




                ],
              ),
            ),
          )
        ],

      ),



      // child: ListView(
      //   children: [
      //     Text(
      //       cropsData.name,
      //       textAlign: TextAlign.center,
      //       style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, ),
      //     ),
      //     Column(
      //       children: [
      //
      //         Container(
      //           margin:
      //           const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      //           padding:
      //           const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      //           height: 200,
      //           decoration: BoxDecoration(
      //               // color: Theme.of(context).cardColor,
      //               borderRadius: BorderRadius.circular(30)),
      //
      //           child: Column(
      //             children: [
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children:  [
      //
      //                   CachedNetworkImage(
      //                     alignment: Alignment.center,
      //                     height: 150,
      //                     fit: BoxFit.fill,
      //                     width: 200,
      //                     // filterQuality: FilterQuality.medium,
      //
      //                     imageUrl: cropsData.thumbnailUrl ??
      //                         "https://i.imgur.com/3jcYAZR.jpg",
      //                     progressIndicatorBuilder:
      //                         (context, url, downloadProgress) =>
      //                         CircularProgressIndicator(
      //                             value: downloadProgress.progress),
      //                     errorWidget: (context, url, error) =>
      //                     const Icon(Icons.error),
      //                   ),
      //                 ],
      //               ),
      //               const SizedBox(
      //                 height: 10,
      //               ),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: [
      //                  Text(
      //                    cropsData.description ?? 'NA',
      //                    textAlign: TextAlign.center,
      //                    style: const TextStyle(
      //                        fontSize: 18, fontWeight: FontWeight.bold),
      //                   )
      //                 ],
      //               ),
      //               const SizedBox(
      //                 height: 12,
      //               ),
      //               // Row(
      //               //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               //   children: [
      //               //     Text(
      //               //       cropsData.type as String,
      //               //       style: TextStyle(
      //               //           fontSize: 18, fontWeight: FontWeight.bold),
      //               //     )
      //               //   ],
      //               // ),
      //               // const SizedBox(
      //               //   height: 12,
      //               // ),
      //               // Row(
      //               //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               //   children: const [
      //               //     Text(
      //               //       "Recommended Zone",
      //               //       style: TextStyle(
      //               //           fontSize: 18, fontWeight: FontWeight.bold),
      //               //     )
      //               //   ],
      //               // )
      //             ],
      //           ),
      //
      //         )
      //       ],
      //     )
      //   ],
      //
      //
      //
      //
      //
      // ),

    );
  }
}