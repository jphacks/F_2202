import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/presentation/top/search/search_destination_state.dart';

class SearchDestinationController
    extends StateNotifier<SearchDestinationState> {
  SearchDestinationController({
    required this.reader,
  }) : super(const SearchDestinationState());

  final Reader reader;

  Future<void> searchDestination({
    required String keyword,
  }) async {
    
  }
}
