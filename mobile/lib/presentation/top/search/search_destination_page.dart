import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/l10n/app_localization.dart';
import 'package:mobile/presentation/top/search/search_destination_state.dart';

class SearchDestinationPage extends HookConsumerWidget {
  const SearchDestinationPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0xEEEEEEEE),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          children: [
            _SearchTextField(
              onSearchChanged: (value) {},
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => _ResultTile(
                  onTap: () {},
                ),
                itemCount: 5,
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
        style: const TextStyle(color: Colors.white),
        cursorColor: Colors.white.withOpacity(0.3),
        onChanged: onSearchChanged,
      ),
    );
  }
}

class _ResultTile extends StatelessWidget {
  const _ResultTile({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.grey,
      child: ListTile(
        title: const Text(
          '建物名',
        ),
        subtitle: const Text('住所'),
        onTap: () {},
      ),
    );
  }
}
