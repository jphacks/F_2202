import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/config/app_routing_name.dart';
import 'package:mobile/model/destination/destination.dart';
import 'package:mobile/model/property/property.dart';
import 'package:mobile/presentation/property_list/property_list_page.dart';
import 'package:mobile/presentation/top/search/search_destination_page.dart';
import 'package:mobile/presentation/top/top_controller.dart';
import 'package:mobile/presentation/top/top_controller_provider.dart';
import 'package:mobile/presentation/top/top_state.dart';
import 'package:mobile/presentation/top/widget/tile.dart';
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
  // ここにMock追加
  List<Property> mockList = [
    const Property(
      name: 'シャンポール代々木',
      address: '東京都渋谷区代々木5-7-10',
      propertyType: '区分所有マンション',
      rent: 120000,
      totalGroundStory: 8,
      roomCount: 3,
      floorPlan: 'LDK',
      area: 33.6,
      propetyStoructure: 'RC',
      imageUrl: 'assets/2.png',
      lat: 35.670084,
      lng: 139.688146,
      rate: 4.5,
    ),
    const Property(
      name: 'グランドコンシェルジュ千駄ヶ谷',
      address: '東京都渋谷区千駄ヶ谷5-4-2',
      propertyType: '区分所有マンション',
      rent: 71000,
      totalGroundStory: 5,
      roomCount: 3,
      floorPlan: 'LDK',
      area: 33.6,
      propetyStoructure: 'RC',
      lat: 35.682587,
      lng: 139.706834,
      imageUrl: 'assets/1.png',
      fee: 3000,
      rate: 4.2,
    ),
    const Property(
      name: '藤和シティホームズ恵比寿',
      address: '東京都渋谷区恵比寿1-25-2',
      propertyType: '区分所有マンション',
      rent: 150000,
      totalGroundStory: 14,
      roomCount: 3,
      floorPlan: 'LDK',
      area: 33.6,
      propetyStoructure: 'RC',
      imageUrl: 'assets/3.png',
      lat: 35.646895,
      lng: 139.715943,
      rate: 4.0,
    ),
    const Property(
      name: 'ニュー恵比寿フラワーマンション',
      address: '東京都渋谷区恵比寿3-2-2',
      propertyType: '区分所有マンション',
      totalGroundStory: 10,
      roomCount: 3,
      floorPlan: 'LDK',
      area: 33.6,
      rent: 90000,
      propetyStoructure: 'RC',
      imageUrl: 'assets/4.png',
      lat: 35.645234,
      lng: 139.717385,
      rate: 3.7,
    ),
    const Property(
      name: 'キャッスルマンション幡ヶ谷',
      address: '東京都渋谷区幡ヶ谷2-18-2',
      propertyType: '区分所有マンション',
      totalGroundStory: 10,
      roomCount: 3,
      floorPlan: 'LDK',
      area: 33.6,
      rent: 87000,
      propetyStoructure: 'RC',
      imageUrl: 'assets/5.png',
      lat: 35.676943,
      lng: 139.674984,
      rate: 3.3,
    ),
    const Property(
      name: 'タワーホームズ氷川',
      address: '東京都渋谷区東2-20-14',
      rent: 123000,
      propertyType: '区分所有マンション',
      totalGroundStory: 12,
      roomCount: 3,
      floorPlan: 'LDK',
      area: 33.6,
      propetyStoructure: 'RC',
      imageUrl: 'assets/6.png',
      lat: 35.653417,
      lng: 139.708844,
      rate: 4.1,
    ),
    const Property(
      name: 'ロイヤルパレス原宿',
      address: '東京都渋谷区神南1-5-4',
      propertyType: '区分所有マンション',
      totalGroundStory: 8,
      roomCount: 3,
      floorPlan: 'LDK',
      area: 33.6,
      propetyStoructure: 'RC',
      imageUrl: 'assets/7.png',
      rent: 118000,
      lat: 35.664899,
      lng: 139.700282,
      rate: 3.9,
    ),
    const Property(
      name: 'メゾン・ド・エビス',
      address: '東京都渋谷区恵比寿西2-3-11',
      propertyType: '区分所有マンション',
      totalGroundStory: 10,
      roomCount: 3,
      floorPlan: 'LDK',
      area: 33.6,
      propetyStoructure: 'RC',
      imageUrl: 'assets/8.png',
      rent: 98000,
      lat: 35.649899,
      lng: 139.707872,
      rate: 3.5,
    ),
    const Property(
      name: 'キャッスルマンション代官山',
      address: '東京都渋谷区代官山町13-8',
      propertyType: '区分所有マンション',
      totalGroundStory: 7,
      roomCount: 3,
      floorPlan: 'LDK',
      area: 33.6,
      propetyStoructure: 'RC',
      imageUrl: 'assets/9.png',
      rent: 80000,
      lat: 35.650278,
      lng: 139.704725,
      rate: 4.0,
    ),
    const Property(
      name: 'ダイネス壱番館渋谷',
      address: '東京都渋谷区神南1-11-5',
      propertyType: '区分所有マンション',
      totalGroundStory: 12,
      roomCount: 3,
      floorPlan: 'LDK',
      area: 33.6,
      propetyStoructure: 'RC',
      imageUrl: 'assets/10.png',
      rent: 109000,
      lat: 35.662424,
      lng: 139.701249,
      rate: 4.2,
    ),
  ];
  bool isBuild = false;

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
                    bottom: isBuild ? 180 : 80,
                    child: homeButtomList(controller),
                  ),
                  if (isBuild)
                    _cardSection(
                      pageController: _pageController,
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
      initialCameraPosition: const CameraPosition(
        target: LatLng(
          35.658034,
          139.701636,
        ),
        zoom: 13.0,
      ),
      markers: _createMarker(
        pageController: pageController,
      ),
      onMapCreated: (GoogleMapController mapController) {
        _mapController.complete(mapController);
      },
    );
  }

  Widget _cardSection({
    required PageController pageController,
  }) {
    return Expanded(
      child: Container(
        height: 150,
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
        child: PageView(
          onPageChanged: (int index) async {
            if (_mapController.isCompleted) {
              final GoogleMapController mapController =
                  await _mapController.future;
              //スワイプ後のページのお店を取得
              final selectedLocation = mockList.elementAt(index);

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
          children: _storeTiles(),
        ),
      ),
    );
  }

  List<Widget> _storeTiles() {
    final _storeTiles = mockList.map(
      (store) {
        return PropertyListTile(
          property: store,
          location: const LatLng(
            35.658034,
            139.701636,
          ),
          onTap: () async {},
        );
      },
    ).toList();
    return _storeTiles;
  }

  Set<Marker> _createMarker({
    required PageController pageController,
  }) {
    return isBuild
        ? mockList
            .map(
              (p) => Marker(
                icon: p.isCenter
                    ? BitmapDescriptor.defaultMarkerWithHue(255)
                    : BitmapDescriptor.defaultMarkerWithHue(0),
                markerId: MarkerId(p.address),
                position: LatLng(p.lat, p.lng),
              ),
            )
            .toSet()
        : []
            .map(
              (p) => const Marker(
                markerId: MarkerId(''),
                position: LatLng(0, 0),
              ),
            )
            .toSet();
  }

  Widget homeButtomList(
    TopController topController,
  ) {
    return Row(
      children: [
        if (isBuild)
          DropShadow(
            child: homeButton(
              icon: Icons.list,
              onButtonTap: () async {
                Navigator.of(context).pushNamed(
                  AppRoutingName.pageList,
                  arguments: PropertyListArgument(
                    propertyList: _filter(),
                    place: '渋谷',
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
            onButtonTap: () async {
              Navigator.of(context).pushNamed(
                AppRoutingName.pageSwipe,
              );
            },
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

  List<Property> _filter({
    Property? property,
  }) {
    final list = mockList;
    for (var mock in list) {
      if (mock.isCenter) {
        list.remove(mock);
      }
    }
    if (property != null) {
      list.add(property);
    }
    return list;
  }

  void _buildButtomSheet() {
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
            setState(
              () {
                isBuild = true;
                centerDestination = latlng;
                _filter(
                  property: Property(
                    isCenter: true,
                    lat: latlng.latitude,
                    lng: latlng.longitude,
                  ),
                );
              },
            );
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
