import 'package:farmeasy/screens/crop.dart';
import 'package:farmeasy/screens/crop_search_results.dart';
import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: SearchField(
            searchStyle: const TextStyle(color: Colors.white),
            suggestions: ["Paddy", "Wheat", "Maize"]
                .map((e) => SearchFieldListItem(e))
                .toList(),
            suggestionStyle: const TextStyle(
              color: Colors.black,
            ),
            suggestionItemDecoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            marginColor: Colors.black,
            suggestionState: Suggestion.expand,
            textInputAction: TextInputAction.next,
            hint: 'SearchField Example 2',
            onSubmit: (query) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CropSearchResults(searchQuery: query)));
            },


            searchInputDecoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.white, width: 2),
              ),
              border: const OutlineInputBorder(),
            ),
          ),
        )

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
    ));
  }
}
