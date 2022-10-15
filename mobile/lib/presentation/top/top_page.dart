import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/presentation/top/top_controller_provider.dart';
import 'package:mobile/presentation/top/top_state.dart';


class TopPage extends StatefulHookConsumerWidget {
  const TopPage({
    Key? key,
  }) : super(key: key);

  @override
  TopPageState createState() => TopPageState();
}

class TopPageState extends ConsumerState<TopPage> {
  final Completer<GoogleMapController> _mapController = Completer();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final asyncValue = ref.watch(topControllerProvider);

    final _pageController = PageController(
      viewportFraction: 0.85,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: asyncValue.when(
            data: (data) {
              return Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  _googleMap(
                    mapController: _mapController,
                    pageController: _pageController,
                    topState: data,
                  ),
                ],
              );
            },
            error: (error, _) => const CircularProgressIndicator(),
            loading: () => const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }

  Widget _googleMap({
    required Completer<GoogleMapController> mapController,
    required PageController pageController,
    required TopState topState,
  }) {
    return GoogleMap(
      myLocationButtonEnabled: false,
      mapType: MapType.normal,
      initialCameraPosition: CameraPosition(
        target: LatLng(
          topState.currentLatitude,
          topState.currentLongitude,
        ),
        zoom: 13.0,
      ),
      onMapCreated: (GoogleMapController mapController) {
        _mapController.complete(mapController);
      },
    );
  }
}
