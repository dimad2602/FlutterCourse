import 'package:curse_app_1/domain/blocs/list_search/list_block.dart';
import 'package:curse_app_1/domain/blocs/list_search/list_event.dart';
import 'package:curse_app_1/domain/blocs/list_search/list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/repositories/list_search_repo.dart';
import '../models/item_model/item.dart';

class ListWithOutFreezedPage extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();
  ListWithOutFreezedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListBloc(ListSearchRepository()),
      child: Scaffold(
        body: BlocBuilder<ListBloc, ListState>(
          builder: (context, state) {
            if (state is InitialState) {
              BlocProvider.of<ListBloc>(context).add(Initialize());
              return CircularProgressIndicatorUI();
            } else if (state is SearchInputState) {
              return CircularProgressIndicatorUI();
            } else if (state is LoadingState) {
              return CircularProgressIndicatorUI();
            } else if (state is FailureState) {
              return buildFailureUI(context, state.errorText);
            } else if (state is ListDataState) {
              return buildCompliteUI(context, state.items, _searchController);
            } else {
              return Container();
            }
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

Widget buildInputUI(BuildContext context) {
  return Column(
    children: [
      const Center(
        child: CircularProgressIndicator(),
      ),
      ElevatedButton(
        onPressed: () {
          BlocProvider.of<ListBloc>(context).add(Initialize());
        },
        child: const Text('Retry'),
      ),
    ],
  );
}

Widget buildFailureUI(BuildContext context, String errorText) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Loading failed: $errorText'),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            //BlocProvider.of<ListSearchBloc>(context).add(ListLoadingRetry());
          },
          child: const Text('Retry'),
        ),
      ],
    ),
  );
}

Widget buildCompliteUI(
  BuildContext context,
  List<Item> listItems,
  TextEditingController searchController,
) {
  return Column(
    children: [
      const SizedBox(
        height: 15,
      ),
      TextField(
        controller: searchController,
        decoration: const InputDecoration(
          hintText: 'Search',
        ),
      ),
      const SizedBox(height: 16),
      ElevatedButton(
        onPressed: () {
          final login = searchController.text;
          BlocProvider.of<ListBloc>(context).add(SendSearchString(login));
        },
        child: Text('Search'),
      ),
      Expanded(
        child: ListView.builder(
            itemCount: listItems.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: Column(
                  children: [
                    Text(listItems[index].name),
                  ],
                ),
              );
            }),
      ),
    ],
  );
}
