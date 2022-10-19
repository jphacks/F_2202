import 'package:flutter/material.dart';
import 'package:mobile/presentation/detail/widgets/section_layout.dart';
import 'package:mobile/presentation/widgets/drop_shadow.dart';

class NearShops extends StatelessWidget {
  const NearShops({
    Key? key,
    required this.shops,
  }) : super(key: key);

  final List<Map<String, String>> shops;

  @override
  Widget build(BuildContext context) {
    return SectionLayout(
      sectionTitle: '周辺のお店',
      children: [
        SizedBox(
          height: 190,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ListItem(
                shopName: shops[index]["shopName"]!,
                meter: shops[index]["meter"]!,
                reviewStar: shops[index]["reviewStar"]!,
                shopThumbnail: shops[index]["shopThumbnail"]!,
                coordinates: const {
                  'latitude': 34.6956849,
                  'longitude': 135.1907121,
                },
              );
            },
            itemCount: shops.length,
          ),
        )
      ],
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.shopName,
    required this.meter,
    required this.reviewStar,
    required this.shopThumbnail,
    required this.coordinates,
  }) : super(key: key);

  final String shopName;
  final String meter;
  final String reviewStar;
  final String shopThumbnail;
  final Map<String, double> coordinates;

  @override
  Widget build(BuildContext context) {
    return DropShadow(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            shopThumbnailView(shopThumbnail: shopThumbnail),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  shopNameView(shopName: shopName),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      meterView(meter: meter),
                      const SizedBox(width: 4),
                      reviewStarView(reviewStar: reviewStar),
                    ],
                  ),
                ],
              ),
            ),
            // TODO 受け取った座標を元にGoogleMapで開けるようにする
            // url_launcherを使用する
            openGoogleMap(),
          ],
        ),
      ),
    );
  }

  Widget shopThumbnailView({required String shopThumbnail}) {
    return Image(
      image: NetworkImage(shopThumbnail),
      fit: BoxFit.cover,
      width: 150,
      height: 80,
    );
  }

  Widget shopNameView({required String shopName}) {
    return Text(
      shopName,
      style: const TextStyle(
        color: Color(0xff333333),
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget reviewStarView({required String reviewStar}) {
    return Row(
      children: [
        const Icon(
          Icons.grade,
          color: Color(0xFFFDE047),
          size: 14,
        ),
        const SizedBox(width: 2),
        Text(
          reviewStar,
          style: const TextStyle(
            color: Color(0xff333333),
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget meterView({required String meter}) {
    return Row(
      children: [
        const Icon(
          Icons.location_on,
          color: Color(0xfffe6663),
          size: 14,
        ),
        const SizedBox(width: 2),
        Text(
          meter,
          style: const TextStyle(
            color: Color(0xff333333),
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget openGoogleMap() {
    return TextButton(
      onPressed: () {},
      child: Container(
        height: 26,
        width: 150 - 16,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          color: Color(0xff84cc16),
        ),
        child: const Align(
          alignment: Alignment.center,
          child: Text(
            "Google Mapで開く",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
