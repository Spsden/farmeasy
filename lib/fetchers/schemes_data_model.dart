class SchemesModel {
  final int totalElements;
  final int totalPages;
  final List<Item> items;

  SchemesModel({
    required this.totalElements,
    required this.totalPages,
    required this.items,
  });

}

class Item {
  final int id;
  final String title;
  final String summery;
  final String lgn;
  final String contextPath;

  Item({
    required this.id,
    required this.title,
    required this.summery,
    required this.lgn,
    required this.contextPath,
  });

}
