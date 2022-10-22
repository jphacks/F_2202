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
                        thumbnailUrl: property.imageUrl,
                        propertyName: property.name,
                        fullAddress: property.address,
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
                          fee: property.fee.toString(),
                          yearBuilds: property.totalGroundStory.toString(),
                          floorPlan: property.roomCount.toString() +
                              property.floorPlan,
                          propertyType: property.propertyType,
                          area: '${property.area.toStringAsFixed(1)}m²',
                          propetyStoructure: property.propetyStoructure,
                          stationWalkTime:
                              property.transportion.stationWalkTime ??
                                  '山手線 渋谷駅',
                        ),
                        const HorizontalRule(),
                        const BuildingImages(
                          imageUrls: [
                            'assets/1.png',
                            'assets/1-2.png',
                          ],
                        ),
                        const HorizontalRule(),
                        AccessMap(
                          fullAddress: property.address,
                          latitude: property.lat,
                          longitude: property.lng,
                          propertyName: property.name,
                        ),
                        const HorizontalRule(),
                        const NearShops(
                          // TODO freezedを使用する
                          shops: [
                            {
                              "shopName": "らあめん 渋英",
                              "meter": "120m",
                              "reviewStar": "3.7",
                              "shopThumbnail":
                                  "https://lh5.googleusercontent.com/p/AF1QipNBBSfwaV6M6sHFkeQnXVCES-XnF7AD_qIluCRW=w184-h184-n-k-no?q=70",
                              "coordinates":
                                  '{"latitude": 34.6956849,"longitude": 135.1907121,}',
                            },
                            {
                              "shopName": "羽衣湯",
                              "meter": "410m",
                              "reviewStar": "4.1",
                              "shopThumbnail": '?q=70',
                              "coordinates":
                                  '{"latitude": 34.6956849,"longitude": 135.1907121,}',
                            },
                            {
                              "shopName": "黄金の塩らぁ麺 渋谷",
                              "meter": "400m",
                              "reviewStar": "4.1",
                              "shopThumbnail":
                                  'https://lh5.googleusercontent.com/p/AF1QipPAtwIR0fmvKl_cFc2tXkj121uWcRGOf0kdFSc=w184-h184-n-k-no?q=70',
                              "coordinates":
                                  '{"latitude": 34.6956849,"longitude": 135.1907121,}',
                            },
                            {
                              "shopName": "改良湯",
                              "meter": "700m",
                              "reviewStar": "4.3",
                              "shopThumbnail":
                                  'https://www.google.com/search?q=%E6%94%B9%E8%89%AF%E6%B9%AF&rlz=1C5CHFA_enJP996JP996&sxsrf=ALiCzsa1Xwt8g8skiLD1LCwQfMfByTcQAg:1666403852392&source=lnms&tbm=isch&sa=X&ved=2ahUKEwi9gLKN3vL6AhWWRN4KHfl4CTMQ_AUoAnoECAMQBA&biw=1321&bih=920&dpr=1#imgrc=l7yRyDPV1Evg6M?q=70',
                              "coordinates":
                                  '{"latitude": 34.6956849,"longitude": 135.1907121,}',
                            },
                            {
                              "shopName": "博多天神 渋谷南口店",
                              "meter": "310m",
                              "reviewStar": "4.2",
                              "shopThumbnail":
                                  'https://lh5.googleusercontent.com/p/AF1QipP0HYOg6jOciOYzydGYs3xdsmcg9qvOBzWkaZuf=w184-h184-n-k-no?q=70',
                              "coordinates":
                                  '{"latitude": 34.6956849,"longitude": 135.1907121,}',
                            },
                            {
                              "shopName": "らーめんはやし",
                              "meter": "400m",
                              "reviewStar": "4.0",
                              "shopThumbnail":
                                  'https://s1.spkimg.com/image/2022/10/09/07/eafLq3CIErCYrARXvevbBGu5OT9Ups94.jpg?q=60',
                              "coordinates":
                                  '{"latitude": 34.6956849,"longitude": 135.1907121,}',
                            },
                            {
                              "shopName": "ドシー恵比寿",
                              "meter": "610m",
                              "reviewStar": "4.0",
                              "shopThumbnail":
                                  'https://www.google.com/search?q=%E3%83%89%E3%82%B7%E3%83%BC%E6%81%B5%E6%AF%94%E5%AF%BF+%E3%82%B5%E3%82%A6%E3%83%8A&rlz=1C5CHFA_enJP996JP996&sxsrf=ALiCzsY06VU7JUIcEuNDvNcvNFnx4wbBGg:1666403976608&source=lnms&tbm=isch&sa=X&ved=2ahUKEwi5us_I3vL6AhVbUd4KHdshARAQ_AUoAnoECAMQBA&biw=1321&bih=920&dpr=1#imgrc=zOMAzQ-_3K4ePM?q=70',
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
