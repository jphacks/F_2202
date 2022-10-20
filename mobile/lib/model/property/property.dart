import 'package:freezed_annotation/freezed_annotation.dart';

part 'property.freezed.dart';
part 'property.g.dart';

@freezed
class Property with _$Property {
  const factory Property({
    /// 家の名前
    @Default('') String propertyName,

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
    @Default('') String propetyStoructure,

    /// 築年数
    @Default(0) int totalGroundStory,

    /// 〇〇畳
    @Default(0.0) double netYield,

    /// タイプ(マンションなど)
    @Default('') String propertyType,

    /// 駅の情報
    @Default(Transportion()) Transportion transportion,
  }) = _Property;

  factory Property.fromJson(Map<String, dynamic> json) =>
      _$PropertyFromJson(json);
}

@freezed
abstract class PropertyModel with _$PropertyModel {
  const PropertyModel._();
  const factory PropertyModel.response({
    @Default('') String propertyName,
    @Default('') String prefecture,
    @Default('') String city,
    @Default('') String region,
    @Default('') String address,
    @Default(0) int rent,
    @Default(0) int roomCount,
    @Default('') String propetyStoructure,
    @Default(0) int totalGroundStory,
    @Default(0.0) double netYield,
    @Default('') String propertyType,
    @Default(Transportion()) Transportion transportion,
  }) = PropertyModelResponse;

  factory PropertyModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyModelFromJson(json);

  Property toEntity() => Property(
        propertyName: propertyName,
        prefecture: prefecture,
        city: city,
        region: region,
        address: address,
        rent: rent,
        roomCount: roomCount,
        propetyStoructure: propetyStoructure,
        totalGroundStory: totalGroundStory,
        netYield: netYield,
        propertyType: propertyType,
        transportion: transportion,
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
