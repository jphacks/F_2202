import 'package:flutter/material.dart';
import 'package:mobile/presentation/detail/widgets/access_map.dart';
import 'package:mobile/presentation/detail/widgets/building_images.dart';
import 'package:mobile/presentation/detail/widgets/header_action_buttons.dart';
import 'package:mobile/presentation/detail/widgets/horizontal_rule.dart';
import 'package:mobile/presentation/detail/widgets/main_visual.dart';
import 'package:mobile/presentation/detail/widgets/near_shops.dart';
import 'package:mobile/presentation/detail/widgets/property_details.dart';
import 'package:mobile/presentation/widgets/header_back_button.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          fit: StackFit.expand,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const MainVisual(
                    thumbnailUrl:
                        'https://images.unsplash.com/photo-1568605114967-8130f3a36994?w=800&q=80',
                    propertyName: 'ダイナシティ梅田',
                    fullAddress: '大阪府大阪市北区鶴野町３−２１',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      // 物件情報を載せるWidgets群
                      children: const [
                        PropertyDetails(
                          rent: '7.55',
                          fee: '5000',
                          yearBuilds: '2022年（築15年）',
                          floorPlan: '1LDK',
                          propertyType: 'マンション',
                          area: '20.0m²',
                          propetyStoructure: 'RC',
                          stationWalkTime: '徒歩13分',
                        ),
                        HorizontalRule(),
                        BuildingImages(
                          imageUrls: [
                            'https://images.unsplash.com/photo-1568605114967-8130f3a36994?w=800&q=80',
                            'https://images.unsplash.com/photo-1664575196644-808978af9b1f?w=800&q=80',
                            'https://images.unsplash.com/photo-1568605114967-8130f3a36994?w=800&q=80',
                            'https://images.unsplash.com/photo-1664575196644-808978af9b1f?w=800&q=80',
                          ],
                        ),
                        HorizontalRule(),
                        AccessMap(
                          fullAddress: '大阪府大阪市北区鶴野町３−２１',
                          latitude: 34.6956849,
                          longitude: 135.1907121,
                          propertyName: 'ダイナシティ梅田',
                        ),
                        HorizontalRule(),
                        NearShops(
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const HeaderBackButton(),
            const HeaderActionButtons(),
          ],
        ),
      ),
    );
  }
}
