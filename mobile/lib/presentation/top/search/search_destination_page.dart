import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/constant/color_hex.dart';
import 'package:mobile/l10n/app_localization.dart';
import 'package:mobile/model/destination/destination.dart';
import 'package:mobile/presentation/top/search/search_destination_controller_provider.dart';

class SearchDestinationPage extends HookConsumerWidget {
  const SearchDestinationPage({
    Key? key,
    required this.onAnimatedTap,
  }) : super(key: key);

  final ValueChanged<Destination> onAnimatedTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(searchDestinationControllerProvider);
    final controller = ref.read(searchDestinationControllerProvider.notifier);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: HexColor('F8F9FD'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Divider(
              indent: size.width * 0.35,
              endIndent: size.width * 0.35,
              thickness: 8,
            ),
            const SizedBox(
              height: 10,
            ),
            _SearchTextField(
              onSearchChanged: (keyword) async {
                await controller.searchDestination(keyword: keyword);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => _ResultTile(
                  onTap: () async {
                    final latlng = await controller.selectedDestination(
                      destination: state.destinationList[index],
                    );
                    onAnimatedTap(latlng);
                    Navigator.pop(context);
                  },
                  destination: state.destinationList[index],
                ),
                itemCount: state.destinationList.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchTextField extends StatelessWidget {
  const _SearchTextField({
    Key? key,
    required this.onSearchChanged,
  }) : super(key: key);

  final ValueChanged<String> onSearchChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalization.of(context)!;

    return ColoredBox(
      color: Colors.white,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: l10n.search_place_text_field_hint,
          hintStyle: const TextStyle(color: Colors.black),
          border: InputBorder.none,
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ),
        style: const TextStyle(color: Colors.black),
        cursorColor: Colors.grey,
        onChanged: onSearchChanged,
      ),
    );
  }
}

class _ResultTile extends StatelessWidget {
  const _ResultTile({
    Key? key,
    required this.onTap,
    required this.destination,
  }) : super(key: key);

  final Function() onTap;
  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.grey,
      child: ListTile(
        title: Text(
          destination.placeName,
        ),
        subtitle: Text(destination.placeAddress),
        onTap: onTap,
      ),
    );
  }
}
