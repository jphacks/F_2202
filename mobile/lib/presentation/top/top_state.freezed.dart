// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'top_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopState {
  double get currentLatitude => throw _privateConstructorUsedError;
  double get currentLongitude => throw _privateConstructorUsedError;
  String get nextToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopStateCopyWith<TopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopStateCopyWith<$Res> {
  factory $TopStateCopyWith(TopState value, $Res Function(TopState) then) =
      _$TopStateCopyWithImpl<$Res, TopState>;
  @useResult
  $Res call(
      {double currentLatitude, double currentLongitude, String nextToken});
}

/// @nodoc
class _$TopStateCopyWithImpl<$Res, $Val extends TopState>
    implements $TopStateCopyWith<$Res> {
  _$TopStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLatitude = null,
    Object? currentLongitude = null,
    Object? nextToken = null,
  }) {
    return _then(_value.copyWith(
      currentLatitude: null == currentLatitude
          ? _value.currentLatitude
          : currentLatitude // ignore: cast_nullable_to_non_nullable
              as double,
      currentLongitude: null == currentLongitude
          ? _value.currentLongitude
          : currentLongitude // ignore: cast_nullable_to_non_nullable
              as double,
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopStateCopyWith<$Res> implements $TopStateCopyWith<$Res> {
  factory _$$_TopStateCopyWith(
          _$_TopState value, $Res Function(_$_TopState) then) =
      __$$_TopStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double currentLatitude, double currentLongitude, String nextToken});
}

/// @nodoc
class __$$_TopStateCopyWithImpl<$Res>
    extends _$TopStateCopyWithImpl<$Res, _$_TopState>
    implements _$$_TopStateCopyWith<$Res> {
  __$$_TopStateCopyWithImpl(
      _$_TopState _value, $Res Function(_$_TopState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLatitude = null,
    Object? currentLongitude = null,
    Object? nextToken = null,
  }) {
    return _then(_$_TopState(
      currentLatitude: null == currentLatitude
          ? _value.currentLatitude
          : currentLatitude // ignore: cast_nullable_to_non_nullable
              as double,
      currentLongitude: null == currentLongitude
          ? _value.currentLongitude
          : currentLongitude // ignore: cast_nullable_to_non_nullable
              as double,
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TopState implements _TopState {
  const _$_TopState(
      {this.currentLatitude = 0.0,
      this.currentLongitude = 0.0,
      this.nextToken = ''});

  @override
  @JsonKey()
  final double currentLatitude;
  @override
  @JsonKey()
  final double currentLongitude;
  @override
  @JsonKey()
  final String nextToken;

  @override
  String toString() {
    return 'TopState(currentLatitude: $currentLatitude, currentLongitude: $currentLongitude, nextToken: $nextToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopState &&
            (identical(other.currentLatitude, currentLatitude) ||
                other.currentLatitude == currentLatitude) &&
            (identical(other.currentLongitude, currentLongitude) ||
                other.currentLongitude == currentLongitude) &&
            (identical(other.nextToken, nextToken) ||
                other.nextToken == nextToken));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentLatitude, currentLongitude, nextToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopStateCopyWith<_$_TopState> get copyWith =>
      __$$_TopStateCopyWithImpl<_$_TopState>(this, _$identity);
}

abstract class _TopState implements TopState {
  const factory _TopState(
      {final double currentLatitude,
      final double currentLongitude,
      final String nextToken}) = _$_TopState;

  @override
  double get currentLatitude;
  @override
  double get currentLongitude;
  @override
  String get nextToken;
  @override
  @JsonKey(ignore: true)
  _$$_TopStateCopyWith<_$_TopState> get copyWith =>
      throw _privateConstructorUsedError;
}
