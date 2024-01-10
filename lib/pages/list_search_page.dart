import "package:curse_app_1/models/item_model/item.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../domain/blocs/list_search2/list_search_bloc.dart";

class ListSearchPage extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();
  ListSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ListSearchBloc, ListSearchState>(
          builder: (context, state) {
        return state.when(
          initial: () {
            print("Initial state");
            BlocProvider.of<ListSearchBloc>(context)
                .add(const ListSearchEvent.initialize());
            return CircularProgressIndicatorUI(); //buildInputUI(context);
          },
          loading: () {
            print("Loading state");
            return CircularProgressIndicatorUI();
          },
          searchInput: (String searchString) {
            print("searchInput state");
            return CircularProgressIndicatorUI();
          },
          list: (List<Item> items) {
            print("list state");
            return buildCompliteUI(context, state.Items!, _searchController);
          },
          failure: (List<Item> items, String errorText, String? searchString) {
            print("failure state");
            return CircularProgressIndicatorUI();
          },
        );
      }),
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
          BlocProvider.of<ListSearchBloc>(context)
              .add(const ListSearchEvent.initialize());
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
      const SizedBox(height: 15,),
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
          BlocProvider.of<ListSearchBloc>(context)
              .add(ListSearchEvent.sendSearchString(searchString: login));
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
