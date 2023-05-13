import 'package:farmeasy/fetchers/crops_data_model.dart';
import 'package:farmeasy/fetchers/fetchers.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class CropsListView extends StatefulWidget {
  @override
  _CropsListViewState createState() => _CropsListViewState();
}

class _CropsListViewState extends State<CropsListView> {
  static const _pageSize = 100;

  final PagingController<int, CropsData> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final newItems = await DataSources.fetchCrops(pageKey.toString());
      print(newItems);
      final isLastPage = newItems.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + newItems.length;
        _pagingController.appendPage(newItems, nextPageKey as int?);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) =>
      // Don't worry about displaying progress or error indicators on screen; the
      // package takes care of that. If you want to customize them, use the
      // [PagedChildBuilderDelegate] properties.
      PagedListView<int, CropsData>(
          pagingController: _pagingController,
          builderDelegate: PagedChildBuilderDelegate<CropsData>(
              itemBuilder: (context, item, index) => ListTile(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => CropDetailsPage()));
                    },
                    leading: CircleAvatar(
                      child: Image.network(item.thumbnailUrl ??
                          'https://i.imgur.com/3jcYAZR.jpg'),
                    ),
                    title: Text(item.name ?? "na"),
                  )));

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
