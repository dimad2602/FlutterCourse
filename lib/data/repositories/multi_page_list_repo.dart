import '../../models/item_model/item.dart';

abstract class IListRepository {
  Future<List<Item>> fetchPage({required int page, required int count});
}

class MultiPageListRepo implements IListRepository {

  @override
  Future<List<Item>> fetchPage({required int page, required int count}) async {
    await Future.delayed(const Duration(seconds: 1));
    List<Item> list = [];

    for (int i = 0; i < count; i++) {
      Item item = Item(
        name: 'Item ${page * count + i + 1}',
        description: 'Description for Item ${page * count + i + 1}',
        weight: '${(page * count + i + 1) * 100}',
        cost: '${(page * count + i + 1) * 10}',
      );
      list.add(item);
    }

    return list;
  }
}
