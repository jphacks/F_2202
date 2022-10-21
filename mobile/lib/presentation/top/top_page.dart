import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/config/app_routing_name.dart';
import 'package:mobile/infra/property.dart';
import 'package:mobile/model/destination/destination.dart';
import 'package:mobile/presentation/property_list/property_list_page.dart';
import 'package:mobile/presentation/top/search/search_destination_page.dart';
import 'package:mobile/presentation/top/top_controller.dart';
import 'package:mobile/presentation/top/top_controller_provider.dart';
import 'package:mobile/presentation/top/top_state.dart';
import 'package:mobile/presentation/widgets/drop_shadow.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class TopPage extends StatefulHookConsumerWidget {
  const TopPage({
    Key? key,
  }) : super(key: key);

  @override
  TopPageState createState() => TopPageState();
}

class TopPageState extends ConsumerState<TopPage> {
  final Completer<GoogleMapController> _mapController = Completer();
  LatLng centerDestination = const LatLng(0, 0);

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
    final controller = ref.read(topControllerProvider.notifier);

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
                  Positioned(
                    top: 80,
                    right: 30,
                    child: DropShadow(
                      child: homeButton(
                        icon: Icons.near_me_outlined,
                        onButtonTap: () {},
                        iconSize: 30,
                        buttonSize: 55,
                        buttonColor: Colors.white,
                        buttonIconColor: const Color(0xff333333),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 120,
                    right: 30,
                    child: _cardSection(
                      pageController: _pageController,
                      topState: asyncValue.asData!.value,
                    ),
                  ),
                  Positioned(
                    bottom: 80,
                    child: homeButtomList(controller),
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
      markers: _createMarker(
        pageController: pageController,
        state: topState,
      ),
      onMapCreated: (GoogleMapController mapController) {
        _mapController.complete(mapController);
      },
    );
  }

  Widget _cardSection({
    required TopState topState,
    required PageController pageController,
  }) {
    return Container(
      height: 150,
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
      child: PageView(
        onPageChanged: (int index) async {
          if (_mapController.isCompleted) {
            final GoogleMapController mapController =
                await _mapController.future;
            //スワイプ後のページのお店を取得
            final selectedLocation = topState.propertyList.elementAt(index);

            final zoomLevel = await mapController.getZoomLevel();
            mapController.animateCamera(
              CameraUpdate.newCameraPosition(
                CameraPosition(
                  target: LatLng(
                    selectedLocation.lat,
                    selectedLocation.lng,
                  ),
                  zoom: zoomLevel,
                ),
              ),
            );
          }
        },
        controller: pageController,
      ),
    );
  }

  Set<Marker> _createMarker({
    required PageController pageController,
    required TopState state,
  }) {
    return state.propertyList
        .map(
          (p) => Marker(
            markerId: MarkerId(p.id),
            position: LatLng(p.lat, p.lng),
          ),
        )
        .toSet();
  }

  Widget homeButtomList(
    TopController topController,
  ) {
    final state = ref.watch(topControllerProvider);
    return Row(
      children: [
        DropShadow(
          child: homeButton(
            icon: Icons.textsms_outlined,
            onButtonTap: () async {
              await topController.fetchProperty(centerDestination);
              Navigator.of(context).pushNamed(
                AppRoutingName.pageList,
                arguments: PropertyListArgument(
                  propertyList: state.asData!.value.propertyList,
                  place: state.asData!.value.place,
                ),
              );
            },
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        DropShadow(
          child: homeButton(
            icon: Icons.search,
            onButtonTap: () {
              _buildButtomSheet();
            },
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        DropShadow(
          child: homeButton(
            icon: Icons.favorite,
            onButtonTap: () async {},
          ),
        ),
      ],
    );
  }

  Widget homeButton({
    required IconData icon,
    required Function()? onButtonTap,
    Color buttonColor = Colors.green,
    Color buttonIconColor = Colors.white,
    double buttonSize = 65,
    double iconSize = 35,
  }) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor,
          border: Border.all(color: buttonColor),
          borderRadius: BorderRadius.circular(10),
        ),
        width: buttonSize,
        height: buttonSize,
        child: Icon(
          icon,
          color: buttonIconColor,
          size: iconSize,
        ),
      ),
    );
  }

  void _buildButtomSheet() {
    final state = ref.read(topControllerProvider);
    final controller = ref.read(topControllerProvider.notifier);
    final size = MediaQuery.of(context).size;
    showCupertinoModalBottomSheet(
      topRadius: const Radius.circular(20),
      context: context,
      builder: (_) => SizedBox(
        height: size.height * 0.9,
        child: SearchDestinationPage(
          onAnimatedTap: (destination) async {
            double latitude = 0;
            double longtitude = 0;
            int count = 0;

            for (var i = 0; i < destination.length; i++) {
              if (destination[i] != const Destination()) {
                count += 1;
                latitude += destination[i].latLng.latitude;
                longtitude += destination[i].latLng.longitude;
              }
            }

            final latlng = LatLng(
              latitude / count,
              longtitude / count,
            );

            _animatedSelectedLocation(location: latlng);
            await controller.fetchProperty(latlng);
            await controller
                .getSelectedLocationToAddress(state.asData!.value.propertyList);
            setState(() {
              centerDestination = latlng;
            });
          },
        ),
      ),
    );
  }

  Future<void> _animatedSelectedLocation({required LatLng location}) async {
    if (_mapController.isCompleted) {
      final GoogleMapController mapController = await _mapController.future;
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(
              location.latitude,
              location.longitude,
            ),
            zoom: await mapController.getZoomLevel(),
          ),
        ),
      );
    }
  }
}
