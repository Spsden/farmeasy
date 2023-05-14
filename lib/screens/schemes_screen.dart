import 'package:flutter/material.dart';
import 'package:farmeasy/fetchers/fetchers.dart';
import 'package:farmeasy/main.dart';
import 'package:farmeasy/custom/Scheme_card.dart';
import 'package:farmeasy/fetchers/fetchers.dart';
import 'package:farmeasy/fetchers/schemes_data_model.dart' as scheme;
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class SchemesScreen extends StatefulWidget {
  @override
  _SchemesScreenState createState() => _SchemesScreenState();
}

class _SchemesScreenState extends State<SchemesScreen> {
  final PagingController<int, scheme.Item> _pagingController =
      PagingController(firstPageKey: 1);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final newItems = await DataSources.fetchSchemes(pageKey.toString());
      //print(newItems.length);
      final isLastPage = newItems.length < 5;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
        // print("thhe end");
      } else {
        int nextPageKey = pageKey + 1;
        // print(nextPageKey);
        // print(nextPageKey.runtimeType);
        _pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) => Material(
        color: Colors.black,
        child: PagedListView(
          padding: const EdgeInsets.all(10),

          pagingController: _pagingController,
          builderDelegate: PagedChildBuilderDelegate<scheme.Item>(
              itemBuilder: (context, item, index) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).cardColor,
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      leading: const CircleAvatar(
                          backgroundImage: AssetImage('assets/goi.png')),
                      // tileColor: Theme.of(context).cardColor,
                      title: Text(item.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.w100,
                            color: Colors.white,
                            fontSize: 19,
                          )),
                      subtitle: Text(
                        item.summery,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  )

              //  SchemeCard(schemesModel: item )

              ),
          // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     childAspectRatio: 9 / 12,
          //     crossAxisCount: 2,
          //     mainAxisSpacing: 16),
        ),
      );

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}

// Widget build(BuildContext context) {
//   return  Material(
//     color: Colors.black,
//     child: ListView(
//       children: const [
//       Text(
//       "Government Policies",
//       textAlign: TextAlign.center,
//       style: TextStyle(
//           fontSize: 30,
//           fontWeight: FontWeight.bold,
//           color: Colors.white),
//     ),
//       ]
//     ),
//   );
// }
