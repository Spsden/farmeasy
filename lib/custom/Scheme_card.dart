//list tile
import 'package:flutter/material.dart';

class schemeCard extends StatelessWidget {
  const schemeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 50,
        color: Theme.of(context).cardColor,
        borderOnForeground: true,
        child: SizedBox(
          width: 200,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: const [
               Text(
                  "Hello everyone ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
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
