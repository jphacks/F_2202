import 'package:freezed_annotation/freezed_annotation.dart';

part 'property.freezed.dart';
part 'property.g.dart';

@freezed
class Property with _$Property {
  const factory Property({
    /// id
    @Default('') String id,

    /// 画像
    @Default('') String imageUrl,

    /// 家の名前
    @Default('') String name,

    /// 都道府県
    @Default('') String prefecture,

    /// 市
    @Default('') String city,

    /// 町など
    @Default('') String region,

    /// 具体的な住所
    @Default('') String address,

    /// 家賃
    @Default(0) int rent,

    /// 部屋数
    @Default(0) int roomCount,

    /// DKやLDKなど
    @Default('') String floorPlan,

    /// 築年数
    @Default(0) int totalGroundStory,

    /// 〇〇畳
    @Default(0.0) double netYield,

    /// 階数
    @Default('') String florPart,

    /// タイプ(マンションなど)
    @Default('') String propertyType,

    /// 駅の情報
    @Default(Transportion()) Transportion transportion,

    /// fee
    @Default(0) int fee,

    /// fee
    @Default(0.0) double area,

    /// propetyStoructure
    @Default('') String propetyStoructure,

    /// 位置
    @Default(0.0) double lat,

    ///
    @Default(0.0) double lng,
  }) = _Property;

  factory Property.fromJson(Map<String, dynamic> json) =>
      _$PropertyFromJson(json);
}

@freezed
abstract class PropertyModel with _$PropertyModel {
  const PropertyModel._();
  const factory PropertyModel.response({
    @Default('') String id,
    @Default('') String imageUrl,
    @Default('') String name,
    @Default('') String prefecture,
    @Default('') String city,
    @Default('') String region,
    @Default('') String address,
    @Default(0) int rent,
    @Default(0) int roomCount,
    @Default('') String floorPlan,
    @Default('') String florPart,
    @Default(0) int totalGroundStory,
    @Default(0.0) double netYield,
    @Default('') String propertyType,
    @Default(0) int fee,
    @Default(0.0) double area,
    @Default('') String propetyStoructure,
    @Default(Transportion()) Transportion transportion,
    @Default(0.0) double lat,
    @Default(0.0) double lng,
  }) = PropertyModelResponse;

  factory PropertyModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyModelFromJson(json);

  Property toEntity() => Property(
        id: id,
        imageUrl: imageUrl,
        name: name,
        prefecture: prefecture,
        city: city,
        region: region,
        address: address,
        rent: rent,
        roomCount: roomCount,
        floorPlan: floorPlan,
        florPart: florPart,
        totalGroundStory: totalGroundStory,
        netYield: netYield,
        propertyType: propertyType,
        transportion: transportion,
        fee: fee,
        area: area,
        propetyStoructure: propetyStoructure,
        lat: lat,
        lng: lng,
      );
}

/// 駅情報
@freezed
abstract class Transportion with _$Transportion {
  const factory Transportion({
    String? stationName,
    String? railroadName,
    String? stationWalkTime,
  }) = _Transportion;
  factory Transportion.fromJson(Map<String, dynamic> json) =>
      _$TransportionFromJson(json);
}
