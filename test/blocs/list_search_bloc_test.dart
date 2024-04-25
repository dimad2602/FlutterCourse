import 'package:bloc_test/bloc_test.dart';
import 'package:curse_app_1/data/repositories/list_search_repo.dart';
import 'package:curse_app_1/domain/blocs/list_search2/list_search_bloc.dart';
import 'package:curse_app_1/models/item_model/item.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockListRepository extends Mock implements IListRepository {}

void main() {
  late MockListRepository _repository;
  late ListSearchBloc _bloc;

  setUp(() {
    _repository = MockListRepository();
    _bloc = ListSearchBloc(_repository);
  });
  group("ListSearchState bloc", () {
    blocTest("should emit list state with Items",
        //arrange
        build: () {
          when(
            () => _repository.fetchList(),
          ).thenAnswer((_) async => [
                const Item(
                    name: 'first item',
                    description: 'firs item description',
                    weight: '300',
                    cost: '195'),
                const Item(
                    name: 'second item',
                    description: 'second item description',
                    weight: '100',
                    cost: '99')
              ]);
          return _bloc;
        },
        seed: () => const ListSearchState.initial(),
        //act
        act: (_) => _bloc.add(const ListSearchEvent.initialize()),
        //asset
        expect: () => [
              const ListSearchState.loading(),
              const ListSearchState.list(items: [
                Item(
                    name: 'first item',
                    description: 'firs item description',
                    weight: '300',
                    cost: '195'),
                Item(
                    name: 'second item',
                    description: 'second item description',
                    weight: '100',
                    cost: '99')
              ]),
            ],
        verify: (_) {
          verify(() => _repository.fetchList());
        });
    blocTest("should emit list state with searchList",
        //arrange
        build: () {
          when(
            () => _repository.searchList(searchString: 'abc'),
          ).thenAnswer((_) async => [
                const Item(
                    name: 'first item',
                    description: 'firs item description',
                    weight: '300',
                    cost: '195'),
              ]);
          return _bloc;
        },
        seed: () => const ListSearchState.list(items: []),
        //act
        act: (_) => _bloc
            .add(const ListSearchEvent.sendSearchString(searchString: 'abc')),
        //asset
        expect: () => [
              const ListSearchState.loading(),
              const ListSearchState.list(items: [
                Item(
                    name: 'first item',
                    description: 'firs item description',
                    weight: '300',
                    cost: '195'),
              ]),
            ],
        verify: (_) {
          verify(() => _repository.searchList(searchString: 'abc'));
        });
    blocTest("should emit failure state with searchList",
        //arrange
        build: () {
          when(
            () => _repository.searchList(searchString: 'abc'),
          ).thenThrow(Exception());
          return _bloc;
        },
        seed: () => const ListSearchState.list(items: []),
        //act
        act: (_) => _bloc
            .add(const ListSearchEvent.sendSearchString(searchString: 'abc')),
        //asset
        expect: () => [
              const ListSearchState.loading(),
              const ListSearchState.failure(items: [], errorText: 'Search failed: Exception'),
            ],
        verify: (_) {
          verify(() => _repository.searchList(searchString: 'abc'));
        });
  });
}
