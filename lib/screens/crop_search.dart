import 'package:farmeasy/screens/crop.dart';
import 'package:flutter/material.dart';

import '../fetchers/fetchers.dart';

class CropSearchScreen extends StatefulWidget {
  const CropSearchScreen({Key? key}) : super(key: key);

  @override
  State<CropSearchScreen> createState() => _CropSearchScreenState();
}

class _CropSearchScreenState extends State<CropSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [

            ElevatedButton(onPressed: () {
              // DataSources.fetchCrops();
            }, child: Text('click me')),

            // FutureBuilder(
            //   future: DataSources.allResults(),
            //   builder: (context, snapshot) {
            //     //print(snapshot.data);
            //     //  print("yes has daya");
            //     if (snapshot.hasData) {
            //       // print("yes has daya");
            //       return ListView.builder(
            //           itemCount: snapshot.data.length,
            //           itemBuilder: ((context, index) {
            //             return ListTile(
            //               onTap: () {
            //                 Navigator.push(context, MaterialPageRoute(builder: (context) => CropDetailsPage()));
            //               },
            //               leading: CircleAvatar(
            //                   child: Image.network(snapshot.data[index].field5.toString())),
            //               hoverColor: Colors.white12,
            //               title: Text(snapshot.data[index].crop.toString()),
            //               subtitle: Text(snapshot.data[index].variety.toString()),
            //             );
            //           }));
            //     }
            //
            //     if (snapshot.hasError) {
            //       return Text(snapshot.error.toString());
            //     } else {
            //       //print("yes has daya");
            //       return const CircularProgressIndicator();
            //     }
            //   },
            // )

          ],
        )

      );
  }
}
