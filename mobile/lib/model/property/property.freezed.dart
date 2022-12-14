// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'property.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Property _$PropertyFromJson(Map<String, dynamic> json) {
  return _Property.fromJson(json);
}

/// @nodoc
mixin _$Property {
  /// id
  String get id => throw _privateConstructorUsedError;

  /// 画像
  String get imageUrl => throw _privateConstructorUsedError;

  /// 家の名前
  String get name => throw _privateConstructorUsedError;

  /// 都道府県
  String get prefecture => throw _privateConstructorUsedError;

  /// 市
  String get city => throw _privateConstructorUsedError;

  /// 町など
  String get region => throw _privateConstructorUsedError;

  /// 具体的な住所
  String get address => throw _privateConstructorUsedError;

  /// 家賃
  int get rent => throw _privateConstructorUsedError;

  /// 部屋数
  int get roomCount => throw _privateConstructorUsedError;

  /// DKやLDKなど
  String get floorPlan => throw _privateConstructorUsedError;

  /// 築年数
  int get totalGroundStory => throw _privateConstructorUsedError;

  /// 〇〇畳
  double get netYield => throw _privateConstructorUsedError;

  /// 階数
  String get florPart => throw _privateConstructorUsedError;

  /// タイプ(マンションなど)
  String get propertyType => throw _privateConstructorUsedError;

  /// 駅の情報
  Transportion get transportion => throw _privateConstructorUsedError;

  /// fee
  int get fee => throw _privateConstructorUsedError;

  /// fee
  double get area => throw _privateConstructorUsedError;

  /// propetyStoructure
  String get propetyStoructure => throw _privateConstructorUsedError;

  /// 位置
  double get lat => throw _privateConstructorUsedError;

  ///
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyCopyWith<Property> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyCopyWith<$Res> {
  factory $PropertyCopyWith(Property value, $Res Function(Property) then) =
      _$PropertyCopyWithImpl<$Res, Property>;
  @useResult
  $Res call(
      {String id,
      String imageUrl,
      String name,
      String prefecture,
      String city,
      String region,
      String address,
      int rent,
      int roomCount,
      String floorPlan,
      int totalGroundStory,
      double netYield,
      String florPart,
      String propertyType,
      Transportion transportion,
      int fee,
      double area,
      String propetyStoructure,
      double lat,
      double lng});

  $TransportionCopyWith<$Res> get transportion;
}

/// @nodoc
class _$PropertyCopyWithImpl<$Res, $Val extends Property>
    implements $PropertyCopyWith<$Res> {
  _$PropertyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? name = null,
    Object? prefecture = null,
    Object? city = null,
    Object? region = null,
    Object? address = null,
    Object? rent = null,
    Object? roomCount = null,
    Object? floorPlan = null,
    Object? totalGroundStory = null,
    Object? netYield = null,
    Object? florPart = null,
    Object? propertyType = null,
    Object? transportion = null,
    Object? fee = null,
    Object? area = null,
    Object? propetyStoructure = null,
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      prefecture: null == prefecture
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      rent: null == rent
          ? _value.rent
          : rent // ignore: cast_nullable_to_non_nullable
              as int,
      roomCount: null == roomCount
          ? _value.roomCount
          : roomCount // ignore: cast_nullable_to_non_nullable
              as int,
      floorPlan: null == floorPlan
          ? _value.floorPlan
          : floorPlan // ignore: cast_nullable_to_non_nullable
              as String,
      totalGroundStory: null == totalGroundStory
          ? _value.totalGroundStory
          : totalGroundStory // ignore: cast_nullable_to_non_nullable
              as int,
      netYield: null == netYield
          ? _value.netYield
          : netYield // ignore: cast_nullable_to_non_nullable
              as double,
      florPart: null == florPart
          ? _value.florPart
          : florPart // ignore: cast_nullable_to_non_nullable
              as String,
      propertyType: null == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String,
      transportion: null == transportion
          ? _value.transportion
          : transportion // ignore: cast_nullable_to_non_nullable
              as Transportion,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as double,
      propetyStoructure: null == propetyStoructure
          ? _value.propetyStoructure
          : propetyStoructure // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransportionCopyWith<$Res> get transportion {
    return $TransportionCopyWith<$Res>(_value.transportion, (value) {
      return _then(_value.copyWith(transportion: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PropertyCopyWith<$Res> implements $PropertyCopyWith<$Res> {
  factory _$$_PropertyCopyWith(
          _$_Property value, $Res Function(_$_Property) then) =
      __$$_PropertyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String imageUrl,
      String name,
      String prefecture,
      String city,
      String region,
      String address,
      int rent,
      int roomCount,
      String floorPlan,
      int totalGroundStory,
      double netYield,
      String florPart,
      String propertyType,
      Transportion transportion,
      int fee,
      double area,
      String propetyStoructure,
      double lat,
      double lng});

  @override
  $TransportionCopyWith<$Res> get transportion;
}

/// @nodoc
class __$$_PropertyCopyWithImpl<$Res>
    extends _$PropertyCopyWithImpl<$Res, _$_Property>
    implements _$$_PropertyCopyWith<$Res> {
  __$$_PropertyCopyWithImpl(
      _$_Property _value, $Res Function(_$_Property) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? name = null,
    Object? prefecture = null,
    Object? city = null,
    Object? region = null,
    Object? address = null,
    Object? rent = null,
    Object? roomCount = null,
    Object? floorPlan = null,
    Object? totalGroundStory = null,
    Object? netYield = null,
    Object? florPart = null,
    Object? propertyType = null,
    Object? transportion = null,
    Object? fee = null,
    Object? area = null,
    Object? propetyStoructure = null,
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$_Property(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      prefecture: null == prefecture
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      rent: null == rent
          ? _value.rent
          : rent // ignore: cast_nullable_to_non_nullable
              as int,
      roomCount: null == roomCount
          ? _value.roomCount
          : roomCount // ignore: cast_nullable_to_non_nullable
              as int,
      floorPlan: null == floorPlan
          ? _value.floorPlan
          : floorPlan // ignore: cast_nullable_to_non_nullable
              as String,
      totalGroundStory: null == totalGroundStory
          ? _value.totalGroundStory
          : totalGroundStory // ignore: cast_nullable_to_non_nullable
              as int,
      netYield: null == netYield
          ? _value.netYield
          : netYield // ignore: cast_nullable_to_non_nullable
              as double,
      florPart: null == florPart
          ? _value.florPart
          : florPart // ignore: cast_nullable_to_non_nullable
              as String,
      propertyType: null == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String,
      transportion: null == transportion
          ? _value.transportion
          : transportion // ignore: cast_nullable_to_non_nullable
              as Transportion,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as double,
      propetyStoructure: null == propetyStoructure
          ? _value.propetyStoructure
          : propetyStoructure // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Property implements _Property {
  const _$_Property(
      {this.id = '',
      this.imageUrl = '',
      this.name = '',
      this.prefecture = '',
      this.city = '',
      this.region = '',
      this.address = '',
      this.rent = 0,
      this.roomCount = 0,
      this.floorPlan = '',
      this.totalGroundStory = 0,
      this.netYield = 0.0,
      this.florPart = '',
      this.propertyType = '',
      this.transportion = const Transportion(),
      this.fee = 0,
      this.area = 0.0,
      this.propetyStoructure = '',
      this.lat = 0.0,
      this.lng = 0.0});

  factory _$_Property.fromJson(Map<String, dynamic> json) =>
      _$$_PropertyFromJson(json);

  /// id
  @override
  @JsonKey()
  final String id;

  /// 画像
  @override
  @JsonKey()
  final String imageUrl;

  /// 家の名前
  @override
  @JsonKey()
  final String name;

  /// 都道府県
  @override
  @JsonKey()
  final String prefecture;

  /// 市
  @override
  @JsonKey()
  final String city;

  /// 町など
  @override
  @JsonKey()
  final String region;

  /// 具体的な住所
  @override
  @JsonKey()
  final String address;

  /// 家賃
  @override
  @JsonKey()
  final int rent;

  /// 部屋数
  @override
  @JsonKey()
  final int roomCount;

  /// DKやLDKなど
  @override
  @JsonKey()
  final String floorPlan;

  /// 築年数
  @override
  @JsonKey()
  final int totalGroundStory;

  /// 〇〇畳
  @override
  @JsonKey()
  final double netYield;

  /// 階数
  @override
  @JsonKey()
  final String florPart;

  /// タイプ(マンションなど)
  @override
  @JsonKey()
  final String propertyType;

  /// 駅の情報
  @override
  @JsonKey()
  final Transportion transportion;

  /// fee
  @override
  @JsonKey()
  final int fee;

  /// fee
  @override
  @JsonKey()
  final double area;

  /// propetyStoructure
  @override
  @JsonKey()
  final String propetyStoructure;

  /// 位置
  @override
  @JsonKey()
  final double lat;

  ///
  @override
  @JsonKey()
  final double lng;

  @override
  String toString() {
    return 'Property(id: $id, imageUrl: $imageUrl, name: $name, prefecture: $prefecture, city: $city, region: $region, address: $address, rent: $rent, roomCount: $roomCount, floorPlan: $floorPlan, totalGroundStory: $totalGroundStory, netYield: $netYield, florPart: $florPart, propertyType: $propertyType, transportion: $transportion, fee: $fee, area: $area, propetyStoructure: $propetyStoructure, lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Property &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.prefecture, prefecture) ||
                other.prefecture == prefecture) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.rent, rent) || other.rent == rent) &&
            (identical(other.roomCount, roomCount) ||
                other.roomCount == roomCount) &&
            (identical(other.floorPlan, floorPlan) ||
                other.floorPlan == floorPlan) &&
            (identical(other.totalGroundStory, totalGroundStory) ||
                other.totalGroundStory == totalGroundStory) &&
            (identical(other.netYield, netYield) ||
                other.netYield == netYield) &&
            (identical(other.florPart, florPart) ||
                other.florPart == florPart) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.transportion, transportion) ||
                other.transportion == transportion) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.propetyStoructure, propetyStoructure) ||
                other.propetyStoructure == propetyStoructure) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        imageUrl,
        name,
        prefecture,
        city,
        region,
        address,
        rent,
        roomCount,
        floorPlan,
        totalGroundStory,
        netYield,
        florPart,
        propertyType,
        transportion,
        fee,
        area,
        propetyStoructure,
        lat,
        lng
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PropertyCopyWith<_$_Property> get copyWith =>
      __$$_PropertyCopyWithImpl<_$_Property>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PropertyToJson(
      this,
    );
  }
}

abstract class _Property implements Property {
  const factory _Property(
      {final String id,
      final String imageUrl,
      final String name,
      final String prefecture,
      final String city,
      final String region,
      final String address,
      final int rent,
      final int roomCount,
      final String floorPlan,
      final int totalGroundStory,
      final double netYield,
      final String florPart,
      final String propertyType,
      final Transportion transportion,
      final int fee,
      final double area,
      final String propetyStoructure,
      final double lat,
      final double lng}) = _$_Property;

  factory _Property.fromJson(Map<String, dynamic> json) = _$_Property.fromJson;

  @override

  /// id
  String get id;
  @override

  /// 画像
  String get imageUrl;
  @override

  /// 家の名前
  String get name;
  @override

  /// 都道府県
  String get prefecture;
  @override

  /// 市
  String get city;
  @override

  /// 町など
  String get region;
  @override

  /// 具体的な住所
  String get address;
  @override

  /// 家賃
  int get rent;
  @override

  /// 部屋数
  int get roomCount;
  @override

  /// DKやLDKなど
  String get floorPlan;
  @override

  /// 築年数
  int get totalGroundStory;
  @override

  /// 〇〇畳
  double get netYield;
  @override

  /// 階数
  String get florPart;
  @override

  /// タイプ(マンションなど)
  String get propertyType;
  @override

  /// 駅の情報
  Transportion get transportion;
  @override

  /// fee
  int get fee;
  @override

  /// fee
  double get area;
  @override

  /// propetyStoructure
  String get propetyStoructure;
  @override

  /// 位置
  double get lat;
  @override

  ///
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$_PropertyCopyWith<_$_Property> get copyWith =>
      throw _privateConstructorUsedError;
}

PropertyModel _$PropertyModelFromJson(Map<String, dynamic> json) {
  return PropertyModelResponse.fromJson(json);
}

/// @nodoc
mixin _$PropertyModel {
  String get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get prefecture => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  int get rent => throw _privateConstructorUsedError;
  int get roomCount => throw _privateConstructorUsedError;
  String get floorPlan => throw _privateConstructorUsedError;
  String get florPart => throw _privateConstructorUsedError;
  int get totalGroundStory => throw _privateConstructorUsedError;
  double get netYield => throw _privateConstructorUsedError;
  String get propertyType => throw _privateConstructorUsedError;
  int get fee => throw _privateConstructorUsedError;
  double get area => throw _privateConstructorUsedError;
  String get propetyStoructure => throw _privateConstructorUsedError;
  Transportion get transportion => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String imageUrl,
            String name,
            String prefecture,
            String city,
            String region,
            String address,
            int rent,
            int roomCount,
            String floorPlan,
            String florPart,
            int totalGroundStory,
            double netYield,
            String propertyType,
            int fee,
            double area,
            String propetyStoructure,
            Transportion transportion,
            double lat,
            double lng)
        response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String imageUrl,
            String name,
            String prefecture,
            String city,
            String region,
            String address,
            int rent,
            int roomCount,
            String floorPlan,
            String florPart,
            int totalGroundStory,
            double netYield,
            String propertyType,
            int fee,
            double area,
            String propetyStoructure,
            Transportion transportion,
            double lat,
            double lng)?
        response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String imageUrl,
            String name,
            String prefecture,
            String city,
            String region,
            String address,
            int rent,
            int roomCount,
            String floorPlan,
            String florPart,
            int totalGroundStory,
            double netYield,
            String propertyType,
            int fee,
            double area,
            String propetyStoructure,
            Transportion transportion,
            double lat,
            double lng)?
        response,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PropertyModelResponse value) response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PropertyModelResponse value)? response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PropertyModelResponse value)? response,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyModelCopyWith<PropertyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyModelCopyWith<$Res> {
  factory $PropertyModelCopyWith(
          PropertyModel value, $Res Function(PropertyModel) then) =
      _$PropertyModelCopyWithImpl<$Res, PropertyModel>;
  @useResult
  $Res call(
      {String id,
      String imageUrl,
      String name,
      String prefecture,
      String city,
      String region,
      String address,
      int rent,
      int roomCount,
      String floorPlan,
      String florPart,
      int totalGroundStory,
      double netYield,
      String propertyType,
      int fee,
      double area,
      String propetyStoructure,
      Transportion transportion,
      double lat,
      double lng});

  $TransportionCopyWith<$Res> get transportion;
}

/// @nodoc
class _$PropertyModelCopyWithImpl<$Res, $Val extends PropertyModel>
    implements $PropertyModelCopyWith<$Res> {
  _$PropertyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? name = null,
    Object? prefecture = null,
    Object? city = null,
    Object? region = null,
    Object? address = null,
    Object? rent = null,
    Object? roomCount = null,
    Object? floorPlan = null,
    Object? florPart = null,
    Object? totalGroundStory = null,
    Object? netYield = null,
    Object? propertyType = null,
    Object? fee = null,
    Object? area = null,
    Object? propetyStoructure = null,
    Object? transportion = null,
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      prefecture: null == prefecture
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      rent: null == rent
          ? _value.rent
          : rent // ignore: cast_nullable_to_non_nullable
              as int,
      roomCount: null == roomCount
          ? _value.roomCount
          : roomCount // ignore: cast_nullable_to_non_nullable
              as int,
      floorPlan: null == floorPlan
          ? _value.floorPlan
          : floorPlan // ignore: cast_nullable_to_non_nullable
              as String,
      florPart: null == florPart
          ? _value.florPart
          : florPart // ignore: cast_nullable_to_non_nullable
              as String,
      totalGroundStory: null == totalGroundStory
          ? _value.totalGroundStory
          : totalGroundStory // ignore: cast_nullable_to_non_nullable
              as int,
      netYield: null == netYield
          ? _value.netYield
          : netYield // ignore: cast_nullable_to_non_nullable
              as double,
      propertyType: null == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as double,
      propetyStoructure: null == propetyStoructure
          ? _value.propetyStoructure
          : propetyStoructure // ignore: cast_nullable_to_non_nullable
              as String,
      transportion: null == transportion
          ? _value.transportion
          : transportion // ignore: cast_nullable_to_non_nullable
              as Transportion,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransportionCopyWith<$Res> get transportion {
    return $TransportionCopyWith<$Res>(_value.transportion, (value) {
      return _then(_value.copyWith(transportion: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PropertyModelResponseCopyWith<$Res>
    implements $PropertyModelCopyWith<$Res> {
  factory _$$PropertyModelResponseCopyWith(_$PropertyModelResponse value,
          $Res Function(_$PropertyModelResponse) then) =
      __$$PropertyModelResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String imageUrl,
      String name,
      String prefecture,
      String city,
      String region,
      String address,
      int rent,
      int roomCount,
      String floorPlan,
      String florPart,
      int totalGroundStory,
      double netYield,
      String propertyType,
      int fee,
      double area,
      String propetyStoructure,
      Transportion transportion,
      double lat,
      double lng});

  @override
  $TransportionCopyWith<$Res> get transportion;
}

/// @nodoc
class __$$PropertyModelResponseCopyWithImpl<$Res>
    extends _$PropertyModelCopyWithImpl<$Res, _$PropertyModelResponse>
    implements _$$PropertyModelResponseCopyWith<$Res> {
  __$$PropertyModelResponseCopyWithImpl(_$PropertyModelResponse _value,
      $Res Function(_$PropertyModelResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? name = null,
    Object? prefecture = null,
    Object? city = null,
    Object? region = null,
    Object? address = null,
    Object? rent = null,
    Object? roomCount = null,
    Object? floorPlan = null,
    Object? florPart = null,
    Object? totalGroundStory = null,
    Object? netYield = null,
    Object? propertyType = null,
    Object? fee = null,
    Object? area = null,
    Object? propetyStoructure = null,
    Object? transportion = null,
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$PropertyModelResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      prefecture: null == prefecture
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      rent: null == rent
          ? _value.rent
          : rent // ignore: cast_nullable_to_non_nullable
              as int,
      roomCount: null == roomCount
          ? _value.roomCount
          : roomCount // ignore: cast_nullable_to_non_nullable
              as int,
      floorPlan: null == floorPlan
          ? _value.floorPlan
          : floorPlan // ignore: cast_nullable_to_non_nullable
              as String,
      florPart: null == florPart
          ? _value.florPart
          : florPart // ignore: cast_nullable_to_non_nullable
              as String,
      totalGroundStory: null == totalGroundStory
          ? _value.totalGroundStory
          : totalGroundStory // ignore: cast_nullable_to_non_nullable
              as int,
      netYield: null == netYield
          ? _value.netYield
          : netYield // ignore: cast_nullable_to_non_nullable
              as double,
      propertyType: null == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as double,
      propetyStoructure: null == propetyStoructure
          ? _value.propetyStoructure
          : propetyStoructure // ignore: cast_nullable_to_non_nullable
              as String,
      transportion: null == transportion
          ? _value.transportion
          : transportion // ignore: cast_nullable_to_non_nullable
              as Transportion,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyModelResponse extends PropertyModelResponse {
  const _$PropertyModelResponse(
      {this.id = '',
      this.imageUrl = '',
      this.name = '',
      this.prefecture = '',
      this.city = '',
      this.region = '',
      this.address = '',
      this.rent = 0,
      this.roomCount = 0,
      this.floorPlan = '',
      this.florPart = '',
      this.totalGroundStory = 0,
      this.netYield = 0.0,
      this.propertyType = '',
      this.fee = 0,
      this.area = 0.0,
      this.propetyStoructure = '',
      this.transportion = const Transportion(),
      this.lat = 0.0,
      this.lng = 0.0})
      : super._();

  factory _$PropertyModelResponse.fromJson(Map<String, dynamic> json) =>
      _$$PropertyModelResponseFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String imageUrl;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String prefecture;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String region;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final int rent;
  @override
  @JsonKey()
  final int roomCount;
  @override
  @JsonKey()
  final String floorPlan;
  @override
  @JsonKey()
  final String florPart;
  @override
  @JsonKey()
  final int totalGroundStory;
  @override
  @JsonKey()
  final double netYield;
  @override
  @JsonKey()
  final String propertyType;
  @override
  @JsonKey()
  final int fee;
  @override
  @JsonKey()
  final double area;
  @override
  @JsonKey()
  final String propetyStoructure;
  @override
  @JsonKey()
  final Transportion transportion;
  @override
  @JsonKey()
  final double lat;
  @override
  @JsonKey()
  final double lng;

  @override
  String toString() {
    return 'PropertyModel.response(id: $id, imageUrl: $imageUrl, name: $name, prefecture: $prefecture, city: $city, region: $region, address: $address, rent: $rent, roomCount: $roomCount, floorPlan: $floorPlan, florPart: $florPart, totalGroundStory: $totalGroundStory, netYield: $netYield, propertyType: $propertyType, fee: $fee, area: $area, propetyStoructure: $propetyStoructure, transportion: $transportion, lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyModelResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.prefecture, prefecture) ||
                other.prefecture == prefecture) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.rent, rent) || other.rent == rent) &&
            (identical(other.roomCount, roomCount) ||
                other.roomCount == roomCount) &&
            (identical(other.floorPlan, floorPlan) ||
                other.floorPlan == floorPlan) &&
            (identical(other.florPart, florPart) ||
                other.florPart == florPart) &&
            (identical(other.totalGroundStory, totalGroundStory) ||
                other.totalGroundStory == totalGroundStory) &&
            (identical(other.netYield, netYield) ||
                other.netYield == netYield) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.propetyStoructure, propetyStoructure) ||
                other.propetyStoructure == propetyStoructure) &&
            (identical(other.transportion, transportion) ||
                other.transportion == transportion) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        imageUrl,
        name,
        prefecture,
        city,
        region,
        address,
        rent,
        roomCount,
        floorPlan,
        florPart,
        totalGroundStory,
        netYield,
        propertyType,
        fee,
        area,
        propetyStoructure,
        transportion,
        lat,
        lng
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyModelResponseCopyWith<_$PropertyModelResponse> get copyWith =>
      __$$PropertyModelResponseCopyWithImpl<_$PropertyModelResponse>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String imageUrl,
            String name,
            String prefecture,
            String city,
            String region,
            String address,
            int rent,
            int roomCount,
            String floorPlan,
            String florPart,
            int totalGroundStory,
            double netYield,
            String propertyType,
            int fee,
            double area,
            String propetyStoructure,
            Transportion transportion,
            double lat,
            double lng)
        response,
  }) {
    return response(
        id,
        imageUrl,
        name,
        prefecture,
        city,
        region,
        address,
        rent,
        roomCount,
        floorPlan,
        florPart,
        totalGroundStory,
        netYield,
        propertyType,
        fee,
        area,
        propetyStoructure,
        transportion,
        lat,
        lng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String imageUrl,
            String name,
            String prefecture,
            String city,
            String region,
            String address,
            int rent,
            int roomCount,
            String floorPlan,
            String florPart,
            int totalGroundStory,
            double netYield,
            String propertyType,
            int fee,
            double area,
            String propetyStoructure,
            Transportion transportion,
            double lat,
            double lng)?
        response,
  }) {
    return response?.call(
        id,
        imageUrl,
        name,
        prefecture,
        city,
        region,
        address,
        rent,
        roomCount,
        floorPlan,
        florPart,
        totalGroundStory,
        netYield,
        propertyType,
        fee,
        area,
        propetyStoructure,
        transportion,
        lat,
        lng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String imageUrl,
            String name,
            String prefecture,
            String city,
            String region,
            String address,
            int rent,
            int roomCount,
            String floorPlan,
            String florPart,
            int totalGroundStory,
            double netYield,
            String propertyType,
            int fee,
            double area,
            String propetyStoructure,
            Transportion transportion,
            double lat,
            double lng)?
        response,
    required TResult orElse(),
  }) {
    if (response != null) {
      return response(
          id,
          imageUrl,
          name,
          prefecture,
          city,
          region,
          address,
          rent,
          roomCount,
          floorPlan,
          florPart,
          totalGroundStory,
          netYield,
          propertyType,
          fee,
          area,
          propetyStoructure,
          transportion,
          lat,
          lng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PropertyModelResponse value) response,
  }) {
    return response(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PropertyModelResponse value)? response,
  }) {
    return response?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PropertyModelResponse value)? response,
    required TResult orElse(),
  }) {
    if (response != null) {
      return response(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyModelResponseToJson(
      this,
    );
  }
}

abstract class PropertyModelResponse extends PropertyModel {
  const factory PropertyModelResponse(
      {final String id,
      final String imageUrl,
      final String name,
      final String prefecture,
      final String city,
      final String region,
      final String address,
      final int rent,
      final int roomCount,
      final String floorPlan,
      final String florPart,
      final int totalGroundStory,
      final double netYield,
      final String propertyType,
      final int fee,
      final double area,
      final String propetyStoructure,
      final Transportion transportion,
      final double lat,
      final double lng}) = _$PropertyModelResponse;
  const PropertyModelResponse._() : super._();

  factory PropertyModelResponse.fromJson(Map<String, dynamic> json) =
      _$PropertyModelResponse.fromJson;

  @override
  String get id;
  @override
  String get imageUrl;
  @override
  String get name;
  @override
  String get prefecture;
  @override
  String get city;
  @override
  String get region;
  @override
  String get address;
  @override
  int get rent;
  @override
  int get roomCount;
  @override
  String get floorPlan;
  @override
  String get florPart;
  @override
  int get totalGroundStory;
  @override
  double get netYield;
  @override
  String get propertyType;
  @override
  int get fee;
  @override
  double get area;
  @override
  String get propetyStoructure;
  @override
  Transportion get transportion;
  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$PropertyModelResponseCopyWith<_$PropertyModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Transportion _$TransportionFromJson(Map<String, dynamic> json) {
  return _Transportion.fromJson(json);
}

/// @nodoc
mixin _$Transportion {
  String? get stationName => throw _privateConstructorUsedError;
  String? get railroadName => throw _privateConstructorUsedError;
  String? get stationWalkTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportionCopyWith<Transportion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportionCopyWith<$Res> {
  factory $TransportionCopyWith(
          Transportion value, $Res Function(Transportion) then) =
      _$TransportionCopyWithImpl<$Res, Transportion>;
  @useResult
  $Res call(
      {String? stationName, String? railroadName, String? stationWalkTime});
}

/// @nodoc
class _$TransportionCopyWithImpl<$Res, $Val extends Transportion>
    implements $TransportionCopyWith<$Res> {
  _$TransportionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationName = freezed,
    Object? railroadName = freezed,
    Object? stationWalkTime = freezed,
  }) {
    return _then(_value.copyWith(
      stationName: freezed == stationName
          ? _value.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String?,
      railroadName: freezed == railroadName
          ? _value.railroadName
          : railroadName // ignore: cast_nullable_to_non_nullable
              as String?,
      stationWalkTime: freezed == stationWalkTime
          ? _value.stationWalkTime
          : stationWalkTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransportionCopyWith<$Res>
    implements $TransportionCopyWith<$Res> {
  factory _$$_TransportionCopyWith(
          _$_Transportion value, $Res Function(_$_Transportion) then) =
      __$$_TransportionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? stationName, String? railroadName, String? stationWalkTime});
}

/// @nodoc
class __$$_TransportionCopyWithImpl<$Res>
    extends _$TransportionCopyWithImpl<$Res, _$_Transportion>
    implements _$$_TransportionCopyWith<$Res> {
  __$$_TransportionCopyWithImpl(
      _$_Transportion _value, $Res Function(_$_Transportion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationName = freezed,
    Object? railroadName = freezed,
    Object? stationWalkTime = freezed,
  }) {
    return _then(_$_Transportion(
      stationName: freezed == stationName
          ? _value.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String?,
      railroadName: freezed == railroadName
          ? _value.railroadName
          : railroadName // ignore: cast_nullable_to_non_nullable
              as String?,
      stationWalkTime: freezed == stationWalkTime
          ? _value.stationWalkTime
          : stationWalkTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transportion implements _Transportion {
  const _$_Transportion(
      {this.stationName, this.railroadName, this.stationWalkTime});

  factory _$_Transportion.fromJson(Map<String, dynamic> json) =>
      _$$_TransportionFromJson(json);

  @override
  final String? stationName;
  @override
  final String? railroadName;
  @override
  final String? stationWalkTime;

  @override
  String toString() {
    return 'Transportion(stationName: $stationName, railroadName: $railroadName, stationWalkTime: $stationWalkTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transportion &&
            (identical(other.stationName, stationName) ||
                other.stationName == stationName) &&
            (identical(other.railroadName, railroadName) ||
                other.railroadName == railroadName) &&
            (identical(other.stationWalkTime, stationWalkTime) ||
                other.stationWalkTime == stationWalkTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, stationName, railroadName, stationWalkTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransportionCopyWith<_$_Transportion> get copyWith =>
      __$$_TransportionCopyWithImpl<_$_Transportion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransportionToJson(
      this,
    );
  }
}

abstract class _Transportion implements Transportion {
  const factory _Transportion(
      {final String? stationName,
      final String? railroadName,
      final String? stationWalkTime}) = _$_Transportion;

  factory _Transportion.fromJson(Map<String, dynamic> json) =
      _$_Transportion.fromJson;

  @override
  String? get stationName;
  @override
  String? get railroadName;
  @override
  String? get stationWalkTime;
  @override
  @JsonKey(ignore: true)
  _$$_TransportionCopyWith<_$_Transportion> get copyWith =>
      throw _privateConstructorUsedError;
}
