//list tile
import 'package:flutter/material.dart';

import '../fetchers/schemes_data_model.dart' as scheme;

class SchemeCard extends StatelessWidget {
  final scheme.Item schemesModel;

  const SchemeCard({Key? key, required this.schemesModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 50,
        color: Theme.of(context).cardColor,
        borderOnForeground: true,
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: [
                Text(
                  schemesModel.title,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  schemesModel.summery,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    // fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
