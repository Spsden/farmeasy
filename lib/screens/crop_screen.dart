import 'package:farmeasy/fetchers/fetchers.dart';
import 'package:farmeasy/models/crop_model.dart';
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
    return Center(
        child: FutureBuilder(
      future: DataSources.allresults(0),
      builder: (context, snapshot) {
       // print(snapshot.data);
        if (snapshot.hasData) {
          return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: CircleAvatar(child: Image.network('https://i.imgur.com/plmUTE7.jpg')),
                  hoverColor: Colors.white12,
                  title: Text(snapshot.data[index].crop),
                  subtitle: Text(snapshot.data[index].variety),
                );
              }));
        }

        if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        } else {
          return const CircularProgressIndicator();
        }
      },
    ));
  }
}
