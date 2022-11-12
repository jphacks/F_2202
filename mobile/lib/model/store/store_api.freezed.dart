// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreApi _$StoreApiFromJson(Map<String, dynamic> json) {
  return StoreApiResponse.fromJson(json);
}

/// @nodoc
mixin _$StoreApi {
  String? get name => throw _privateConstructorUsedError;
  String? get placeId => throw _privateConstructorUsedError;
  Geometry? get geometry => throw _privateConstructorUsedError;
  List<Photos>? get photos => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  int? get userRatingsTotal => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? placeId, Geometry? geometry,
            List<Photos>? photos, double? rating, int? userRatingsTotal)
        response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, String? placeId, Geometry? geometry,
            List<Photos>? photos, double? rating, int? userRatingsTotal)?
        response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? placeId, Geometry? geometry,
            List<Photos>? photos, double? rating, int? userRatingsTotal)?
        response,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreApiResponse value) response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreApiResponse value)? response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreApiResponse value)? response,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreApiCopyWith<StoreApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreApiCopyWith<$Res> {
  factory $StoreApiCopyWith(StoreApi value, $Res Function(StoreApi) then) =
      _$StoreApiCopyWithImpl<$Res, StoreApi>;
  @useResult
  $Res call(
      {String? name,
      String? placeId,
      Geometry? geometry,
      List<Photos>? photos,
      double? rating,
      int? userRatingsTotal});

  $GeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class _$StoreApiCopyWithImpl<$Res, $Val extends StoreApi>
    implements $StoreApiCopyWith<$Res> {
  _$StoreApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? placeId = freezed,
    Object? geometry = freezed,
    Object? photos = freezed,
    Object? rating = freezed,
    Object? userRatingsTotal = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photos>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      userRatingsTotal: freezed == userRatingsTotal
          ? _value.userRatingsTotal
          : userRatingsTotal // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeometryCopyWith<$Res>? get geometry {
    if (_value.geometry == null) {
      return null;
    }

    return $GeometryCopyWith<$Res>(_value.geometry!, (value) {
      return _then(_value.copyWith(geometry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoreApiResponseCopyWith<$Res>
    implements $StoreApiCopyWith<$Res> {
  factory _$$StoreApiResponseCopyWith(
          _$StoreApiResponse value, $Res Function(_$StoreApiResponse) then) =
      __$$StoreApiResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? placeId,
      Geometry? geometry,
      List<Photos>? photos,
      double? rating,
      int? userRatingsTotal});

  @override
  $GeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class __$$StoreApiResponseCopyWithImpl<$Res>
    extends _$StoreApiCopyWithImpl<$Res, _$StoreApiResponse>
    implements _$$StoreApiResponseCopyWith<$Res> {
  __$$StoreApiResponseCopyWithImpl(
      _$StoreApiResponse _value, $Res Function(_$StoreApiResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? placeId = freezed,
    Object? geometry = freezed,
    Object? photos = freezed,
    Object? rating = freezed,
    Object? userRatingsTotal = freezed,
  }) {
    return _then(_$StoreApiResponse(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photos>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      userRatingsTotal: freezed == userRatingsTotal
          ? _value.userRatingsTotal
          : userRatingsTotal // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreApiResponse extends StoreApiResponse {
  const _$StoreApiResponse(
      {required this.name,
      required this.placeId,
      required this.geometry,
      required final List<Photos>? photos,
      required this.rating,
      required this.userRatingsTotal})
      : _photos = photos,
        super._();

  factory _$StoreApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$StoreApiResponseFromJson(json);

  @override
  final String? name;
  @override
  final String? placeId;
  @override
  final Geometry? geometry;
  final List<Photos>? _photos;
  @override
  List<Photos>? get photos {
    final value = _photos;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? rating;
  @override
  final int? userRatingsTotal;

  @override
  String toString() {
    return 'StoreApi.response(name: $name, placeId: $placeId, geometry: $geometry, photos: $photos, rating: $rating, userRatingsTotal: $userRatingsTotal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreApiResponse &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.geometry, geometry) ||
                other.geometry == geometry) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.userRatingsTotal, userRatingsTotal) ||
                other.userRatingsTotal == userRatingsTotal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, placeId, geometry,
      const DeepCollectionEquality().hash(_photos), rating, userRatingsTotal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreApiResponseCopyWith<_$StoreApiResponse> get copyWith =>
      __$$StoreApiResponseCopyWithImpl<_$StoreApiResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? placeId, Geometry? geometry,
            List<Photos>? photos, double? rating, int? userRatingsTotal)
        response,
  }) {
    return response(name, placeId, geometry, photos, rating, userRatingsTotal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, String? placeId, Geometry? geometry,
            List<Photos>? photos, double? rating, int? userRatingsTotal)?
        response,
  }) {
    return response?.call(
        name, placeId, geometry, photos, rating, userRatingsTotal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? placeId, Geometry? geometry,
            List<Photos>? photos, double? rating, int? userRatingsTotal)?
        response,
    required TResult orElse(),
  }) {
    if (response != null) {
      return response(
          name, placeId, geometry, photos, rating, userRatingsTotal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreApiResponse value) response,
  }) {
    return response(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreApiResponse value)? response,
  }) {
    return response?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreApiResponse value)? response,
    required TResult orElse(),
  }) {
    if (response != null) {
      return response(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreApiResponseToJson(
      this,
    );
  }
}

abstract class StoreApiResponse extends StoreApi {
  const factory StoreApiResponse(
      {required final String? name,
      required final String? placeId,
      required final Geometry? geometry,
      required final List<Photos>? photos,
      required final double? rating,
      required final int? userRatingsTotal}) = _$StoreApiResponse;
  const StoreApiResponse._() : super._();

  factory StoreApiResponse.fromJson(Map<String, dynamic> json) =
      _$StoreApiResponse.fromJson;

  @override
  String? get name;
  @override
  String? get placeId;
  @override
  Geometry? get geometry;
  @override
  List<Photos>? get photos;
  @override
  double? get rating;
  @override
  int? get userRatingsTotal;
  @override
  @JsonKey(ignore: true)
  _$$StoreApiResponseCopyWith<_$StoreApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Geometry _$GeometryFromJson(Map<String, dynamic> json) {
  return _Geometry.fromJson(json);
}

/// @nodoc
mixin _$Geometry {
  Locations get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeometryCopyWith<Geometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeometryCopyWith<$Res> {
  factory $GeometryCopyWith(Geometry value, $Res Function(Geometry) then) =
      _$GeometryCopyWithImpl<$Res, Geometry>;
  @useResult
  $Res call({Locations location});

  $LocationsCopyWith<$Res> get location;
}

/// @nodoc
class _$GeometryCopyWithImpl<$Res, $Val extends Geometry>
    implements $GeometryCopyWith<$Res> {
  _$GeometryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Locations,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationsCopyWith<$Res> get location {
    return $LocationsCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GeometryCopyWith<$Res> implements $GeometryCopyWith<$Res> {
  factory _$$_GeometryCopyWith(
          _$_Geometry value, $Res Function(_$_Geometry) then) =
      __$$_GeometryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Locations location});

  @override
  $LocationsCopyWith<$Res> get location;
}

/// @nodoc
class __$$_GeometryCopyWithImpl<$Res>
    extends _$GeometryCopyWithImpl<$Res, _$_Geometry>
    implements _$$_GeometryCopyWith<$Res> {
  __$$_GeometryCopyWithImpl(
      _$_Geometry _value, $Res Function(_$_Geometry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$_Geometry(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Locations,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Geometry implements _Geometry {
  const _$_Geometry({required this.location});

  factory _$_Geometry.fromJson(Map<String, dynamic> json) =>
      _$$_GeometryFromJson(json);

  @override
  final Locations location;

  @override
  String toString() {
    return 'Geometry(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Geometry &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeometryCopyWith<_$_Geometry> get copyWith =>
      __$$_GeometryCopyWithImpl<_$_Geometry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeometryToJson(
      this,
    );
  }
}

abstract class _Geometry implements Geometry {
  const factory _Geometry({required final Locations location}) = _$_Geometry;

  factory _Geometry.fromJson(Map<String, dynamic> json) = _$_Geometry.fromJson;

  @override
  Locations get location;
  @override
  @JsonKey(ignore: true)
  _$$_GeometryCopyWith<_$_Geometry> get copyWith =>
      throw _privateConstructorUsedError;
}

Locations _$LocationsFromJson(Map<String, dynamic> json) {
  return _Locations.fromJson(json);
}

/// @nodoc
mixin _$Locations {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationsCopyWith<Locations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsCopyWith<$Res> {
  factory $LocationsCopyWith(Locations value, $Res Function(Locations) then) =
      _$LocationsCopyWithImpl<$Res, Locations>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$LocationsCopyWithImpl<$Res, $Val extends Locations>
    implements $LocationsCopyWith<$Res> {
  _$LocationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
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
}

/// @nodoc
abstract class _$$_LocationsCopyWith<$Res> implements $LocationsCopyWith<$Res> {
  factory _$$_LocationsCopyWith(
          _$_Locations value, $Res Function(_$_Locations) then) =
      __$$_LocationsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$_LocationsCopyWithImpl<$Res>
    extends _$LocationsCopyWithImpl<$Res, _$_Locations>
    implements _$$_LocationsCopyWith<$Res> {
  __$$_LocationsCopyWithImpl(
      _$_Locations _value, $Res Function(_$_Locations) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$_Locations(
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
class _$_Locations implements _Locations {
  const _$_Locations({required this.lat, required this.lng});

  factory _$_Locations.fromJson(Map<String, dynamic> json) =>
      _$$_LocationsFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'Locations(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Locations &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationsCopyWith<_$_Locations> get copyWith =>
      __$$_LocationsCopyWithImpl<_$_Locations>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationsToJson(
      this,
    );
  }
}

abstract class _Locations implements Locations {
  const factory _Locations(
      {required final double lat, required final double lng}) = _$_Locations;

  factory _Locations.fromJson(Map<String, dynamic> json) =
      _$_Locations.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$_LocationsCopyWith<_$_Locations> get copyWith =>
      throw _privateConstructorUsedError;
}

Photos _$PhotosFromJson(Map<String, dynamic> json) {
  return _Photos.fromJson(json);
}

/// @nodoc
mixin _$Photos {
  String get photoReference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotosCopyWith<Photos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosCopyWith<$Res> {
  factory $PhotosCopyWith(Photos value, $Res Function(Photos) then) =
      _$PhotosCopyWithImpl<$Res, Photos>;
  @useResult
  $Res call({String photoReference});
}

/// @nodoc
class _$PhotosCopyWithImpl<$Res, $Val extends Photos>
    implements $PhotosCopyWith<$Res> {
  _$PhotosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoReference = null,
  }) {
    return _then(_value.copyWith(
      photoReference: null == photoReference
          ? _value.photoReference
          : photoReference // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhotosCopyWith<$Res> implements $PhotosCopyWith<$Res> {
  factory _$$_PhotosCopyWith(_$_Photos value, $Res Function(_$_Photos) then) =
      __$$_PhotosCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String photoReference});
}

/// @nodoc
class __$$_PhotosCopyWithImpl<$Res>
    extends _$PhotosCopyWithImpl<$Res, _$_Photos>
    implements _$$_PhotosCopyWith<$Res> {
  __$$_PhotosCopyWithImpl(_$_Photos _value, $Res Function(_$_Photos) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoReference = null,
  }) {
    return _then(_$_Photos(
      photoReference: null == photoReference
          ? _value.photoReference
          : photoReference // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Photos implements _Photos {
  const _$_Photos({required this.photoReference});

  factory _$_Photos.fromJson(Map<String, dynamic> json) =>
      _$$_PhotosFromJson(json);

  @override
  final String photoReference;

  @override
  String toString() {
    return 'Photos(photoReference: $photoReference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Photos &&
            (identical(other.photoReference, photoReference) ||
                other.photoReference == photoReference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, photoReference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotosCopyWith<_$_Photos> get copyWith =>
      __$$_PhotosCopyWithImpl<_$_Photos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotosToJson(
      this,
    );
  }
}

abstract class _Photos implements Photos {
  const factory _Photos({required final String photoReference}) = _$_Photos;

  factory _Photos.fromJson(Map<String, dynamic> json) = _$_Photos.fromJson;

  @override
  String get photoReference;
  @override
  @JsonKey(ignore: true)
  _$$_PhotosCopyWith<_$_Photos> get copyWith =>
      throw _privateConstructorUsedError;
}
