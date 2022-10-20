import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/presentation/top/search/search_destination_controller.dart';
import 'package:mobile/presentation/top/search/search_destination_state.dart';

final searchDestinationControllerProvider = StateNotifierProvider.autoDispose<
    SearchDestinationController, SearchDestinationState>(
  (ref) => SearchDestinationController(
    reader: ref.read,
  ),
);
