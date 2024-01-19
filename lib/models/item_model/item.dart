import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';

@freezed
class Item with _$Item {
  const Item._();

  const factory Item(
      {required String name,
      required String weight,
      required String cost,
      required String description}) = _Item;
}
