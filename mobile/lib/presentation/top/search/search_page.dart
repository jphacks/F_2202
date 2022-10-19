import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/presentation/top/search/search_destination_controller.dart';
import 'package:mobile/presentation/top/search/search_destination_controller_provider.dart';
import 'package:mobile/presentation/top/search/search_destination_state.dart';

class SearchArgument {
  final int selectedIndex;

  SearchArgument({
    required this.selectedIndex,
  });
}

class SearchPage extends HookConsumerWidget {
  const SearchPage({
    Key? key,
    required this.argument,
  }) : super(key: key);

  final SearchArgument argument;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(searchDestinationControllerProvider);
    final controller = ref.read(searchDestinationControllerProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          '検索',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        iconTheme: IconTheme.of(context).copyWith(
          color: Colors.black,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              onChanged: (keyword) async {
                await controller.searchDestination(
                  keyword: keyword,
                );
              },
              decoration: const InputDecoration(
                icon: SizedBox(
                  width: 10,
                  height: 10,
                  child: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                ),
                hintText: "お店を検索してください",
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 8.0, top: 16.0),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            _searchResultTiles(
              controller: controller,
              state: state,
            ),
          ],
        ),
      ),
    );
  }

  Widget _searchResultTiles({
    required SearchDestinationController controller,
    required SearchDestinationState state,
  }) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) => Column(
          children: [
            ListTile(
              title: Text(state.searchDestinationList[index].placeName),
              subtitle: Text(
                state.searchDestinationList[index].placeAddress,
                style: const TextStyle(fontSize: 13),
              ),
              onTap: () async {
                await controller.selectedDestinationState(
                  destination: state.searchDestinationList[index],
                  index: argument.selectedIndex,
                );
                Navigator.pop(context);
              },
            ),
            const Divider(),
          ],
        ),
        itemCount: state.searchDestinationList.length,
      ),
    );
  }
}
