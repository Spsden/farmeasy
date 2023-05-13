import 'package:cached_network_image/cached_network_image.dart';
import 'package:farmeasy/fetchers/crops_data_model.dart';
import 'package:farmeasy/screens/crop.dart';
import 'package:flutter/material.dart';

class CropCard extends StatelessWidget {
  final CropsData cropsData;

  const CropCard({Key? key, required this.cropsData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CropDetailsPage(cropsData: cropsData,)));
        },
        child: Card(
          elevation: 30,
          shadowColor: Colors.black,
          //color: Colors.greenAccent[100],
          child: SizedBox(
            width: 200,

            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [
                  CachedNetworkImage(
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
                  const SizedBox(
                    height: 6,
                  ), //SizedBox
                  Text(
                    cropsData.name,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.green[900],
                      fontWeight: FontWeight.w500,
                    ), //Textstyle
                  ), //Text
                  const SizedBox(
                    height: 5,
                  ),
                  //SizedBox
                  Text(
                    cropsData.description ?? 'NA',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.green,
                    ), //Textstyle
                  ), //Text
                  //SizedBox
                ],
              ), //Column
            ), //Padding
          ), //SizedBox
        ),
      ), //Card
    );
    //Center
  }
}
