import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobile/presentation/detail/widgets/section_layout.dart';

class AccessMap extends StatelessWidget {
  const AccessMap({
    Key? key,
    required this.fullAddress,
    required this.latitude,
    required this.longitude,
    required this.propertyName,
  }) : super(key: key);

  final String fullAddress;
  final double latitude;
  final double longitude;
  final String propertyName;

  @override
  Widget build(BuildContext context) {
    return SectionLayout(
      sectionTitle: 'アクセス',
      children: [
        Text(
          fullAddress,
          style: const TextStyle(
            color: Color(0xff50505b),
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 4),
        SizedBox(
          height: 200,
          child: GoogleMap(
            myLocationButtonEnabled: false,
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: LatLng(
                latitude,
                longitude,
              ),
              zoom: 15.0,
            ),
            markers: _createMarker(),
          ),
        ),
      ],
    );
  }

  Set<Marker> _createMarker() {
    return {
      Marker(
        markerId: MarkerId(propertyName),
        position: LatLng(latitude, longitude),
        infoWindow: InfoWindow(title: propertyName),
      )
    };
  }
}
