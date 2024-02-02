import 'package:curse_app_1/domain/blocs/pagination_list/pagination_list_bloc.dart';
import 'package:curse_app_1/domain/blocs/pagination_list/pagination_list_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/blocs/pagination_list/pagination_list_state.dart';
import '../data/repositories/multi_page_list_repo.dart';
import '../models/item_model/item.dart';

class PaginationListPage extends StatelessWidget {
  const PaginationListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => PaginationListBloc(MultiPageListRepo()),
          ),
        ],
        child: Scaffold(
          body: BlocBuilder<PaginationListBloc, PaginationListState>(
            builder: (context, state) {
              if (state is InitialState) {
                //BlocProvider.of<PaginationListBloc>(context).add(Initialize());
                context.read<PaginationListBloc>().add(Initialize(0, 5));
                return circularProgressIndicatorUI();
              } else if (state is PaginationListDataState) {
                return buildCompleteUI(context, state.items, state.currentPage,
                    state.itemsPerPage);
              } else if (state is LoadingState) {
                return circularProgressIndicatorUI();
              } else if (state is FailureState) {
                return Text(state.errorText);
              } else {
                return const Center(
                  child: Text('Состояние'),
                );
              }
            },
          ),
        ));
  }
}

Widget circularProgressIndicatorUI() {
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
                context.read<PaginationListBloc>().add(
                      ChangeCountOfElements(
                        0,
                        value!,
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
                  onPressed: currentPage > 0
                      ? () {
                          context.read<PaginationListBloc>().add(
                                ChangePage(currentPage - 1, itemsPerPage),
                              );
                        }
                      : null,
                  child: const Text('Previous Page'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    context.read<PaginationListBloc>().add(
                          ChangePage(currentPage + 1, itemsPerPage),
                        );
                  },
                  child: const Text('Next Page'),
                ),
              ],
            ),
          ],
        );
}
