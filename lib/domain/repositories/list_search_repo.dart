import '../../models/item_model/item.dart';

abstract class IListRepository {
  Future<List<Item>> fetchList();
  Future<List<Item>> searchList({required String searchString});
}

class ListSearchRepository extends IListRepository {
  @override
  Future<List<Item>> fetchList() async {
    await Future.delayed(const Duration(seconds: 2));
    Item item1 = const Item(
        name: 'firs item',
        description: 'firs item description',
        weght: '300',
        cost: '195');
    Item item2 = const Item(
        name: 'second item',
        description: 'second item description',
        weght: '100',
        cost: '99');
    Item item3 = const Item(
        name: 'third item',
        description: 'third item description',
        weght: '450',
        cost: '345');

    List<Item> list = [];
    list.add(item1);
    list.add(item2);
    list.add(item3);
    return list;
  }

  @override
  Future<List<Item>> searchList({required String searchString}) {
    // TODO: implement searchList
    throw UnimplementedError();
  }
}
