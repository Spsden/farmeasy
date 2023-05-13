import 'package:farmeasy/fetchers/crops_data_model.dart';
import 'package:farmeasy/screens/crop_screen.dart';
import 'package:flutter/material.dart';

class CropDetailsPage extends StatelessWidget {
  final CropsData cropsData;
  const CropDetailsPage({Key? key, required this.cropsData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Text("Lollllll", style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
