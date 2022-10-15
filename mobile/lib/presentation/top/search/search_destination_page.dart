import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/l10n/app_localization.dart';

class SearchDestinationPage extends HookConsumerWidget {
  const SearchDestinationPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          _SearchTextField(
            onSearchChanged: (value) {},
          ),
        ],
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

    return TextField(
      decoration: InputDecoration(
        hintText: l10n.search_place_text_field_hint,
        hintStyle: const TextStyle(color: Colors.white),
        border: InputBorder.none,
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.white,
        ),
      ),
      style: const TextStyle(color: Colors.white),
      cursorColor: Colors.white.withOpacity(0.3),
      onChanged: onSearchChanged,
    );
  }
}
