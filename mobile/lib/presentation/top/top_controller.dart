import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/infra/geolocator_api.dart';
import 'package:mobile/infra/property.dart';
import 'package:mobile/presentation/top/top_state.dart';

class TopController extends StateNotifier<AsyncValue<TopState>> {
  TopController({
    required this.reader,
  }) : super(const AsyncLoading()) {
    _setup();
  }

  final Reader reader;

  Future<void> _setup() async {
    try {
      // 位置情報取得のリクエスト
      await GeolocatorApi.requestPermissionLocation();
      await _fetchCurrentLocation();
    } catch (error) {
      AsyncError(error);
    }
  }

  Future<void> _fetchCurrentLocation() async {
    final position = await GeolocatorApi.getCurrentLocation();
    state = AsyncData(
      TopState(
        currentLatitude: position.asValue!.value.latitude,
        currentLongitude: position.asValue!.value.longitude,
      ),
    );
  }
}
