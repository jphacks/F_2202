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
  String get placeId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get structuredFormatting => throw _privateConstructorUsedError;
  String get structuredFormattingSub => throw _privateConstructorUsedError;

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
      {String placeId,
      String description,
      String structuredFormatting,
      String structuredFormattingSub});
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
    Object? placeId = null,
    Object? description = null,
    Object? structuredFormatting = null,
    Object? structuredFormattingSub = null,
  }) {
    return _then(_value.copyWith(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      structuredFormatting: null == structuredFormatting
          ? _value.structuredFormatting
          : structuredFormatting // ignore: cast_nullable_to_non_nullable
              as String,
      structuredFormattingSub: null == structuredFormattingSub
          ? _value.structuredFormattingSub
          : structuredFormattingSub // ignore: cast_nullable_to_non_nullable
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
      {String placeId,
      String description,
      String structuredFormatting,
      String structuredFormattingSub});
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
    Object? placeId = null,
    Object? description = null,
    Object? structuredFormatting = null,
    Object? structuredFormattingSub = null,
  }) {
    return _then(_$_Destination(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      structuredFormatting: null == structuredFormatting
          ? _value.structuredFormatting
          : structuredFormatting // ignore: cast_nullable_to_non_nullable
              as String,
      structuredFormattingSub: null == structuredFormattingSub
          ? _value.structuredFormattingSub
          : structuredFormattingSub // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Destination extends _Destination {
  const _$_Destination(
      {this.placeId = '',
      this.description = '',
      this.structuredFormatting = '',
      this.structuredFormattingSub = ''})
      : super._();

  @override
  @JsonKey()
  final String placeId;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String structuredFormatting;
  @override
  @JsonKey()
  final String structuredFormattingSub;

  @override
  String toString() {
    return 'Destination(placeId: $placeId, description: $description, structuredFormatting: $structuredFormatting, structuredFormattingSub: $structuredFormattingSub)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Destination &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.structuredFormatting, structuredFormatting) ||
                other.structuredFormatting == structuredFormatting) &&
            (identical(
                    other.structuredFormattingSub, structuredFormattingSub) ||
                other.structuredFormattingSub == structuredFormattingSub));
  }

  @override
  int get hashCode => Object.hash(runtimeType, placeId, description,
      structuredFormatting, structuredFormattingSub);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DestinationCopyWith<_$_Destination> get copyWith =>
      __$$_DestinationCopyWithImpl<_$_Destination>(this, _$identity);
}

abstract class _Destination extends Destination {
  const factory _Destination(
      {final String placeId,
      final String description,
      final String structuredFormatting,
      final String structuredFormattingSub}) = _$_Destination;
  const _Destination._() : super._();

  @override
  String get placeId;
  @override
  String get description;
  @override
  String get structuredFormatting;
  @override
  String get structuredFormattingSub;
  @override
  @JsonKey(ignore: true)
  _$$_DestinationCopyWith<_$_Destination> get copyWith =>
      throw _privateConstructorUsedError;
}
