import 'package:flutter/material.dart';
import 'package:mobile/model/property/property.dart';
import 'package:mobile/presentation/detail/widgets/access_map.dart';
import 'package:mobile/presentation/detail/widgets/building_images.dart';
import 'package:mobile/presentation/detail/widgets/footer_buttons.dart';
import 'package:mobile/presentation/detail/widgets/horizontal_rule.dart';
import 'package:mobile/presentation/detail/widgets/main_visual.dart';
import 'package:mobile/presentation/detail/widgets/near_shops.dart';
import 'package:mobile/presentation/detail/widgets/property_details.dart';
import 'package:mobile/presentation/detail/widgets/recomend_property.dart';
import 'package:mobile/presentation/widgets/header_back_button.dart';

class DetailPageArgument {
  final Property property;

  DetailPageArgument({
    required this.property,
  });
}

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.argument,
  });

  final DetailPageArgument argument;

  @override
  Widget build(BuildContext context) {
    final property = argument.property;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      MainVisual(
                        thumbnailUrl:
                            'https://images.unsplash.com/photo-1568605114967-8130f3a36994?w=800&q=80',
                        propertyName: property.name,
                        fullAddress: property.prefecture +
                            property.city +
                            property.region +
                            property.address,
                      ),
                      const HeaderBackButton(),
                      headerActionButtons(context),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      // 物件情報を載せるWidgets群
                      children: [
                        PropertyDetails(
                          rent: property.rent.toString(),
                          fee: '5000',
                          yearBuilds: property.totalGroundStory.toString(),
                          floorPlan: '1DK',
                          propertyType: property.propertyType,
                          area: '20.0m²',
                          propetyStoructure: 'RC',
                          stationWalkTime: '徒歩13分',
                        ),
                        const HorizontalRule(),
                        const BuildingImages(
                          imageUrls: [
                            'https://images.unsplash.com/photo-1568605114967-8130f3a36994?w=800&q=80',
                            'https://images.unsplash.com/photo-1664575196644-808978af9b1f?w=800&q=80',
                            'https://images.unsplash.com/photo-1568605114967-8130f3a36994?w=800&q=80',
                            'https://images.unsplash.com/photo-1664575196644-808978af9b1f?w=800&q=80',
                          ],
                        ),
                        const HorizontalRule(),
                        AccessMap(
                          fullAddress: property.prefecture +
                              property.city +
                              property.region +
                              property.address,
                          latitude: 34.6956849,
                          longitude: 135.1907121,
                          propertyName: property.name,
                        ),
                        const HorizontalRule(),
                        const NearShops(
                          // TODO freezedを使用する
                          shops: [
                            {
                              "shopName": "ラーメン大戦争",
                              "meter": "120m",
                              "reviewStar": "5.0",
                              "shopThumbnail":
                                  "https://images.unsplash.com/photo-1568605114967-8130f3a36994?w=800&q=80",
                              "coordinates":
                                  '{"latitude": 34.6956849,"longitude": 135.1907121,}',
                            },
                            {
                              "shopName": "ラーメン中戦争",
                              "meter": "170m",
                              "reviewStar": "4.0",
                              "shopThumbnail":
                                  'https://images.unsplash.com/photo-1664575196644-808978af9b1f?w=800&q=80',
                              "coordinates":
                                  '{"latitude": 34.6956849,"longitude": 135.1907121,}',
                            },
                            {
                              "shopName": "ラーメン小戦争",
                              "meter": "170m",
                              "reviewStar": "4.0",
                              "shopThumbnail":
                                  'https://images.unsplash.com/photo-1568605114967-8130f3a36994?w=800&q=80',
                              "coordinates":
                                  '{"latitude": 34.6956849,"longitude": 135.1907121,}',
                            },
                          ],
                        ),
                        const HorizontalRule(),
                        const RecomendProperty(
                          properties: [
                            {
                              "propertyThumbnail":
                                  "https://images.unsplash.com/photo-1568605114967-8130f3a36994?w=800&q=80",
                            },
                            {
                              "propertyThumbnail":
                                  'https://images.unsplash.com/photo-1664575196644-808978af9b1f?w=800&q=80',
                            },
                            {
                              "propertyThumbnail":
                                  'https://images.unsplash.com/photo-1568605114967-8130f3a36994?w=800&q=80',
                            },
                          ],
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).padding.bottom + 60 + 24,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const FooterButtons(),
          ],
        ),
      ),
    );
  }

  Widget headerActionButtons(context) {
    return Positioned(
      top: MediaQuery.of(context).padding.top + 8,
      right: 16,
      child: Row(
        children: [
          IconButton(
            icon: const Icon(
              Icons.share,
              color: Colors.white,
              size: 32,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 32,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
