import 'package:farmeasy/models/helpers.dart';
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
            suggestions: states
                .map((e) => SearchFieldListItem(e))
                .toList(),

            suggestionStyle: const TextStyle(
              color: Colors.black,
            ),
            validator: (x) {
              if (!states.contains(x) || x!.isEmpty) {
                return 'Please Enter a valid State';
              }
              return null;
            },
            maxSuggestionsInViewPort: 3,
            itemHeight: 50,
            suggestionItemDecoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            marginColor: Colors.black,
            suggestionState: Suggestion.expand,
            textInputAction: TextInputAction.next,
            hint: 'SearchField Example 2',
            onSubmit: (query) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          CropSearchResults(searchQuery: query)));
            },
            searchInputDecoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.white, width: 2),
              ),
              border: const OutlineInputBorder(),
            ),
          ),
        ),
        
       // Text('Your Location : Madhya Pradesh',style: TextStyle(color: Colors.white,fontSize: 30),),

        const Expanded(child: CropSearchResults(searchQuery: "Madhya Pradesh"))


      ],
    ));
  }
}
