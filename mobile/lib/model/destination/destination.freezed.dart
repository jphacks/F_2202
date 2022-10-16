// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'destination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Destination {
  String get name => throw _privateConstructorUsedError;
  String get placeId => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DestinationCopyWith<Destination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationCopyWith<$Res> {
  factory $DestinationCopyWith(
          Destination value, $Res Function(Destination) then) =
      _$DestinationCopyWithImpl<$Res, Destination>;
  @useResult
  $Res call(
      {String name,
      String placeId,
      double latitude,
      double longitude,
      String address});
}

/// @nodoc
class _$DestinationCopyWithImpl<$Res, $Val extends Destination>
    implements $DestinationCopyWith<$Res> {
  _$DestinationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? placeId = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DestinationCopyWith<$Res>
    implements $DestinationCopyWith<$Res> {
  factory _$$_DestinationCopyWith(
          _$_Destination value, $Res Function(_$_Destination) then) =
      __$$_DestinationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String placeId,
      double latitude,
      double longitude,
      String address});
}

/// @nodoc
class __$$_DestinationCopyWithImpl<$Res>
    extends _$DestinationCopyWithImpl<$Res, _$_Destination>
    implements _$$_DestinationCopyWith<$Res> {
  __$$_DestinationCopyWithImpl(
      _$_Destination _value, $Res Function(_$_Destination) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? placeId = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? address = null,
  }) {
    return _then(_$_Destination(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Destination implements _Destination {
  const _$_Destination(
      {this.name = '',
      this.placeId = '',
      this.latitude = 0.0,
      this.longitude = 0.0,
      this.address = ''});

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String placeId;
  @override
  @JsonKey()
  final double latitude;
  @override
  @JsonKey()
  final double longitude;
  @override
  @JsonKey()
  final String address;

  @override
  String toString() {
    return 'Destination(name: $name, placeId: $placeId, latitude: $latitude, longitude: $longitude, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Destination &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, placeId, latitude, longitude, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DestinationCopyWith<_$_Destination> get copyWith =>
      __$$_DestinationCopyWithImpl<_$_Destination>(this, _$identity);
}

abstract class _Destination implements Destination {
  const factory _Destination(
      {final String name,
      final String placeId,
      final double latitude,
      final double longitude,
      final String address}) = _$_Destination;

  @override
  String get name;
  @override
  String get placeId;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$_DestinationCopyWith<_$_Destination> get copyWith =>
      throw _privateConstructorUsedError;
}
