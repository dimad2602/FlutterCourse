import 'package:curse_app_1/domain/blocs/multi_page_list/bloc/multi_page_list_bloc.dart';
import 'package:curse_app_1/domain/repositories/multi_page_list_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/item_model/item.dart';

class MultiPageListPage extends StatelessWidget {
  const MultiPageListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MultiPageListBloc(MultiPageListRepo()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Paginated Item List'),
        ),
        body: BlocBuilder<MultiPageListBloc, MultiPageListState>(
          builder: (context, state) {
            return state.when(
              initial: () {
                context.read<MultiPageListBloc>().add(
                      const MultiPageListEvent.started(
                        pageNumber: 0,
                        itemCount: 5,
                      ),
                    );
                return CircularProgressIndicatorUI();
              },
              list: (List<Item> items, int currentPage, int itemsPerPage) {
                return buildCompleteUI(
                  context,
                  items,
                  currentPage,
                  itemsPerPage,
                );
              },
              loadingNewPage: (
                List<Item> previousItems,
                List<Item> currentItems,
              ) {
                return CircularProgressIndicatorUI();
              },
              loading: (List<Item> items) {
                return CircularProgressIndicatorUI();
              },
              failure: (List<Item> items, String errorText) {
                return CircularProgressIndicatorUI();
              },
            );
          },
        ),
      ),
    );
  }
}

Widget CircularProgressIndicatorUI() {
  return const Center(
    child: CircularProgressIndicator(),
  );
}

Widget buildCompleteUI(
  BuildContext context,
  List<Item>? listItems,
  int currentPage,
  int itemsPerPage,
) {
  //int itemsPerPage = 5;
  return listItems == null
      ? const CircularProgressIndicator()
      : Column(
          children: [
            // Выбор количества элементов на странице
            DropdownButton<int>(
              value: itemsPerPage,
              onChanged: (value) {
                context.read<MultiPageListBloc>().add(
                      MultiPageListEvent.changeCountOfElements(
                        countOfElements: value.toString(),
                        items: listItems,
                      ),
                    );
              },
              items: [5, 10, 15, 20].map<DropdownMenuItem<int>>((int value) {
                return DropdownMenuItem<int>(
                  value: value,
                  child: Text('$value items per page'),
                );
              }).toList(),
            ),
            // Список элементов
            Expanded(
              child: ListView.builder(
                itemCount: listItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(listItems[index].name),
                    subtitle: Text(listItems[index].description),
                  );
                },
              ),
            ),
            // Пагинация
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed:
                  currentPage > 0
                      ? () {
                          context.read<MultiPageListBloc>().add(
                                MultiPageListEvent.changePage(
                                  itemCount: itemsPerPage,
                                  pageNumber: currentPage - 1,
                                ),
                              );
                        }
                      : null,
                  child: Text('Previous Page'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    context.read<MultiPageListBloc>().add(
                          MultiPageListEvent.changePage(
                            itemCount: itemsPerPage,
                            pageNumber: currentPage + 1,
                          ),
                        );
                  },
                  child: Text('Next Page'),
                ),
              ],
            ),
          ],
        );
}
