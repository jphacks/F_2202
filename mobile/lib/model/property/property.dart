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
    @Default('') String rent,
    /// 部屋数
    @Default('') String roomCount,
    /// DKやLDKなど
    @Default('') String propetyStoructure,
    /// 築年数
    @Default('') String totalGroundStory,
    /// 〇〇畳
    @Default('') String netYield,
    /// タイプ(マンションなど)
    @Default('') String propertyType,
  }) = _Property;

  factory Property.fromJson(Map<String, dynamic> json) =>
      _$PropertyFromJson(json);
}
