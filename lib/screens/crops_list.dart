import 'package:cached_network_image/cached_network_image.dart';
import 'package:farmeasy/custom/crop_card.dart';
import 'package:farmeasy/fetchers/crops_data_model.dart';
import 'package:farmeasy/fetchers/fetchers.dart';
import 'package:farmeasy/screens/crop_search.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class CropsListView extends StatefulWidget {
  @override
  _CropsListViewState createState() => _CropsListViewState();
}

class _CropsListViewState extends State<CropsListView> {
  //static const _pageSize = 100;

  final PagingController<int, CropsData> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  // TabController tabController = TabController(length: length, vsync: vsync)

  Future<void> _fetchPage(int pageKey) async {
    try {
      final newItems = await DataSources.fetchCrops(pageKey.toString());
     // print(newItems.length);
      final isLastPage = newItems.length < 20;
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
  Widget build(BuildContext context) =>
      // Don't worry about displaying progress or error indicators on screen; the
      // package takes care of that. If you want to customize them, use the
      // [PagedChildBuilderDelegate] properties.
      Material(
        child: DefaultTabController(
          length: 2,

          child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              toolbarHeight: 5,
              backgroundColor: Theme.of(context).cardColor,
              bottom: const TabBar(
                indicatorWeight: 5,
                  indicatorSize:  TabBarIndicatorSize.label,
                  tabs: [
                Tab(
                  icon: Icon(Icons.grass_rounded,color: Colors.white,),
                ),
                Tab(
                  icon: Icon(Icons.search,color: Colors.white,),
                )
              ]),
            ),
            body: TabBarView(
              children: [
                PagedGridView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(10),
                  pagingController: _pagingController,
                  builderDelegate: PagedChildBuilderDelegate<CropsData>(
                      itemBuilder: (context, item, index) =>
                          CropCard(cropsData: item)


                      ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 9 / 12,
                      crossAxisCount: 2,
                      mainAxisSpacing: 16),
                ),
                const CropSearchScreen()
              ],
            ),
          ),
        ),
      );

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
