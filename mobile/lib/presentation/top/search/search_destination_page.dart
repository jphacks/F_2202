import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/constant/color_hex.dart';
import 'package:mobile/l10n/app_localization.dart';
import 'package:mobile/model/destination/destination.dart';
import 'package:mobile/presentation/top/search/search_destination_controller.dart';
import 'package:mobile/presentation/top/search/search_destination_controller_provider.dart';
import 'package:mobile/presentation/top/search/search_destination_state.dart';

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
      backgroundColor: HexColor('FFFFFF'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
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
                _textFieldArea(
                  controller: controller,
                  labelText: '物件1',
                ),
                _textFieldArea(
                  controller: controller,
                  labelText: '物件2',
                ),
                _textFieldArea(
                  controller: controller,
                  labelText: '物件3',
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: size.width,
                  height: size.height * 0.055,
                  child: ElevatedButton(
                    child: const Text(
                      '物件を探す',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            height: 20,
            color: Colors.grey.withOpacity(0.3),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  '履歴',
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Image.asset('assets/location.png'),
                    const SizedBox(width: 20),
                    Text(
                      '大阪駅',
                      style: TextStyle(color: Colors.black.withOpacity(0.8)),
                    ),
                  ],
                ),
                const Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _textFieldArea({
    required SearchDestinationController controller,
    required String labelText,
    InputBorder? inputBorder,
  }) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        _searchIcon(),
        const SizedBox(
          width: 15,
        ),
        _SearchTextField(
          onSearchChanged: (keyword) async {
            await controller.searchDestination(keyword: keyword);
          },
          labelText: labelText,
          border: inputBorder,
        ),
      ],
    );
  }

  Widget _searchIcon() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Image.asset('assets/green.png'),
    );
  }

  Widget _searchResultTiles({
    required SearchDestinationController controller,
    required SearchDestinationState state,
  }) {
    return Expanded(
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
    );
  }
}

class _SearchTextField extends StatelessWidget {
  const _SearchTextField({
    Key? key,
    required this.onSearchChanged,
    required this.labelText,
    this.border,
  }) : super(key: key);

  final ValueChanged<String> onSearchChanged;
  final String labelText;
  final InputBorder? border;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalization.of(context)!;
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.8,
      child: TextFormField(
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          label: Text(
            labelText,
            style: const TextStyle(color: Colors.grey),
          ),
          hintText: l10n.search_place_text_field_hint,
          hintStyle: const TextStyle(color: Colors.grey),
          border: border,
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
