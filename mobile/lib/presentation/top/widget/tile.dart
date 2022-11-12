import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobile/model/property/property.dart';

class PropertyListTile extends StatelessWidget {
  const PropertyListTile({
    Key? key,
    required this.property,
    required this.location,
    required this.onTap,
  }) : super(key: key);

  final Property property;
  final LatLng location;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Material(
          color: Colors.white,
          elevation: 14.0,
          borderRadius: BorderRadius.circular(14.0),
          shadowColor: const Color(0x802196F3),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 130,
                height: 110,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14.0),
                  child: Image(
                    fit: BoxFit.fill,
                    image:AssetImage(property.imageUrl)
                  ),
                ),
              ),
              _buildDetailInfo(property),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailInfo(Property property) {
    return Flexible(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Text(
                property.name,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}