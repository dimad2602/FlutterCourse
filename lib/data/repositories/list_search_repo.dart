import '../../models/item_model/item.dart';

abstract class IListRepository {
  Future<List<Item>> fetchList();
  Future<List<Item>> searchList({required String searchString});
}

class ListSearchRepository implements IListRepository {
  @override
  Future<List<Item>> fetchList() async {
    await Future.delayed(const Duration(seconds: 2));
    Item item1 = const Item(
        name: 'first item',
        description: 'firs item description',
        weight: '300',
        cost: '195');
    Item item2 = const Item(
        name: 'second item',
        description: 'second item description',
        weight: '100',
        cost: '99');
    Item item3 = const Item(
        name: 'third item',
        description: 'third item description',
        weight: '450',
        cost: '345');

    List<Item> list = [];
    list.add(item1);
    list.add(item2);
    list.add(item3);
    return list;
  }

  @override
  Future<List<Item>> searchList({required String searchString}) async {
    await Future.delayed(const Duration(seconds: 1));

    List<Item> searchResults = [];
    final list = await fetchList();
    final searchLower = searchString.toLowerCase();
    for (Item item in list) {
      final itemNameLower = item.name.toLowerCase();
      if (itemNameLower.contains(searchLower)) {
        searchResults.add(item);
      }
    }

    return searchResults;
  }
}
