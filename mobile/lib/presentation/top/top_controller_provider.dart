import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/presentation/top/top_controller.dart';
import 'package:mobile/presentation/top/top_state.dart';


final topControllerProvider =
    StateNotifierProvider.autoDispose<TopController, AsyncValue<TopState>>(
  (ref) => TopController(
    reader: ref.read,
  ),
);