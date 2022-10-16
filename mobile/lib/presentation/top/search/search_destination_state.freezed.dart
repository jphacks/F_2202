// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_destination_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchDestinationState {
  /// 場所
  String get place => throw _privateConstructorUsedError;

  /// 住所
  String get address => throw _privateConstructorUsedError;

  /// 緯度経度
  LatLng get latLng => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchDestinationStateCopyWith<SearchDestinationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDestinationStateCopyWith<$Res> {
  factory $SearchDestinationStateCopyWith(SearchDestinationState value,
          $Res Function(SearchDestinationState) then) =
      _$SearchDestinationStateCopyWithImpl<$Res, SearchDestinationState>;
  @useResult
  $Res call({String place, String address, LatLng latLng});
}

/// @nodoc
class _$SearchDestinationStateCopyWithImpl<$Res,
        $Val extends SearchDestinationState>
    implements $SearchDestinationStateCopyWith<$Res> {
  _$SearchDestinationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
    Object? address = null,
    Object? latLng = null,
  }) {
    return _then(_value.copyWith(
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latLng: null == latLng
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchDestinationStateCopyWith<$Res>
    implements $SearchDestinationStateCopyWith<$Res> {
  factory _$$_SearchDestinationStateCopyWith(_$_SearchDestinationState value,
          $Res Function(_$_SearchDestinationState) then) =
      __$$_SearchDestinationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String place, String address, LatLng latLng});
}

/// @nodoc
class __$$_SearchDestinationStateCopyWithImpl<$Res>
    extends _$SearchDestinationStateCopyWithImpl<$Res,
        _$_SearchDestinationState>
    implements _$$_SearchDestinationStateCopyWith<$Res> {
  __$$_SearchDestinationStateCopyWithImpl(_$_SearchDestinationState _value,
      $Res Function(_$_SearchDestinationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
    Object? address = null,
    Object? latLng = null,
  }) {
    return _then(_$_SearchDestinationState(
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latLng: null == latLng
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_SearchDestinationState implements _SearchDestinationState {
  const _$_SearchDestinationState(
      {this.place = '', this.address = '', this.latLng = const LatLng(0, 0)});

  /// 場所
  @override
  @JsonKey()
  final String place;

  /// 住所
  @override
  @JsonKey()
  final String address;

  /// 緯度経度
  @override
  @JsonKey()
  final LatLng latLng;

  @override
  String toString() {
    return 'SearchDestinationState(place: $place, address: $address, latLng: $latLng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchDestinationState &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latLng, latLng) || other.latLng == latLng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place, address, latLng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchDestinationStateCopyWith<_$_SearchDestinationState> get copyWith =>
      __$$_SearchDestinationStateCopyWithImpl<_$_SearchDestinationState>(
          this, _$identity);
}

abstract class _SearchDestinationState implements SearchDestinationState {
  const factory _SearchDestinationState(
      {final String place,
      final String address,
      final LatLng latLng}) = _$_SearchDestinationState;

  @override

  /// 場所
  String get place;
  @override

  /// 住所
  String get address;
  @override

  /// 緯度経度
  LatLng get latLng;
  @override
  @JsonKey(ignore: true)
  _$$_SearchDestinationStateCopyWith<_$_SearchDestinationState> get copyWith =>
      throw _privateConstructorUsedError;
}
