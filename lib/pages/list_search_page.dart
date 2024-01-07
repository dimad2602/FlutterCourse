import 'package:curse_app_1/domain/blocs/list_search/list_search_block.dart';
import 'package:curse_app_1/domain/blocs/list_search/list_search_event.dart';
import 'package:curse_app_1/domain/blocs/list_search/list_search_state.dart';
import "package:curse_app_1/models/item_model/item.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class ListSearchPage extends StatelessWidget {
  const ListSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ListSearchBloc, ListSearchState>(
          builder: (context, state) {
        BlocProvider.of<ListSearchBloc>(context).add(PageOpen());
        if (state is InitialState) {
          print("Initial state");
          //BlocProvider.of<ListSearchBloc>(context).add(PageOpen());
          return buildInputUI();
        } else if (state is FailureState) {
          print("Failure state");
          return buildFailureUI(context, "List is empty2");
        } else if (state is CompleteState) {
          print("Complete state");
          return buildCompliteUI(context, state.itemList);
        } else if (state is LoadingState) {
          print("Complete state");
          return buildInputUI();
        } else {
          print("another state");
          return const Text("Error load state");
        }
      }),
    );
  }
}

Widget buildInputUI() {
  return const Center(
    child: CircularProgressIndicator(),
  );
}

Widget buildFailureUI(BuildContext context, String errorText) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Loading failed: $errorText'),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            //BlocProvider.of<ListSearchBloc>(context).add(ListLoadingRetry());
          },
          child: Text('Retry'),
        ),
      ],
    ),
  );
}

Widget buildCompliteUI(BuildContext context, List<Item> listItems) {
  return ListView.builder(
      itemCount: listItems.length,
      itemBuilder: (BuildContext context, int index) {
        return Center(
          child: Column(
            children: [
              Text(listItems[index].name),
            ],
          ),
        );
      });
}
