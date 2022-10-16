// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'destination_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DestinationApi _$DestinationApiFromJson(Map<String, dynamic> json) {
  return DestinationApiResponse.fromJson(json);
}

/// @nodoc
mixin _$DestinationApi {
  String? get placeId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  StructuredFormatting? get structuredFormatting =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? placeId, String? description,
            StructuredFormatting? structuredFormatting)
        response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? placeId, String? description,
            StructuredFormatting? structuredFormatting)?
        response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? placeId, String? description,
            StructuredFormatting? structuredFormatting)?
        response,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DestinationApiResponse value) response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DestinationApiResponse value)? response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DestinationApiResponse value)? response,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DestinationApiCopyWith<DestinationApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationApiCopyWith<$Res> {
  factory $DestinationApiCopyWith(
          DestinationApi value, $Res Function(DestinationApi) then) =
      _$DestinationApiCopyWithImpl<$Res, DestinationApi>;
  @useResult
  $Res call(
      {String? placeId,
      String? description,
      StructuredFormatting? structuredFormatting});

  $StructuredFormattingCopyWith<$Res>? get structuredFormatting;
}

/// @nodoc
class _$DestinationApiCopyWithImpl<$Res, $Val extends DestinationApi>
    implements $DestinationApiCopyWith<$Res> {
  _$DestinationApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = freezed,
    Object? description = freezed,
    Object? structuredFormatting = freezed,
  }) {
    return _then(_value.copyWith(
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      structuredFormatting: freezed == structuredFormatting
          ? _value.structuredFormatting
          : structuredFormatting // ignore: cast_nullable_to_non_nullable
              as StructuredFormatting?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StructuredFormattingCopyWith<$Res>? get structuredFormatting {
    if (_value.structuredFormatting == null) {
      return null;
    }

    return $StructuredFormattingCopyWith<$Res>(_value.structuredFormatting!,
        (value) {
      return _then(_value.copyWith(structuredFormatting: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DestinationApiResponseCopyWith<$Res>
    implements $DestinationApiCopyWith<$Res> {
  factory _$$DestinationApiResponseCopyWith(_$DestinationApiResponse value,
          $Res Function(_$DestinationApiResponse) then) =
      __$$DestinationApiResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? placeId,
      String? description,
      StructuredFormatting? structuredFormatting});

  @override
  $StructuredFormattingCopyWith<$Res>? get structuredFormatting;
}

/// @nodoc
class __$$DestinationApiResponseCopyWithImpl<$Res>
    extends _$DestinationApiCopyWithImpl<$Res, _$DestinationApiResponse>
    implements _$$DestinationApiResponseCopyWith<$Res> {
  __$$DestinationApiResponseCopyWithImpl(_$DestinationApiResponse _value,
      $Res Function(_$DestinationApiResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = freezed,
    Object? description = freezed,
    Object? structuredFormatting = freezed,
  }) {
    return _then(_$DestinationApiResponse(
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      structuredFormatting: freezed == structuredFormatting
          ? _value.structuredFormatting
          : structuredFormatting // ignore: cast_nullable_to_non_nullable
              as StructuredFormatting?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DestinationApiResponse extends DestinationApiResponse {
  const _$DestinationApiResponse(
      {required this.placeId,
      required this.description,
      required this.structuredFormatting})
      : super._();

  factory _$DestinationApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$DestinationApiResponseFromJson(json);

  @override
  final String? placeId;
  @override
  final String? description;
  @override
  final StructuredFormatting? structuredFormatting;

  @override
  String toString() {
    return 'DestinationApi.response(placeId: $placeId, description: $description, structuredFormatting: $structuredFormatting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DestinationApiResponse &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.structuredFormatting, structuredFormatting) ||
                other.structuredFormatting == structuredFormatting));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, placeId, description, structuredFormatting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DestinationApiResponseCopyWith<_$DestinationApiResponse> get copyWith =>
      __$$DestinationApiResponseCopyWithImpl<_$DestinationApiResponse>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? placeId, String? description,
            StructuredFormatting? structuredFormatting)
        response,
  }) {
    return response(placeId, description, structuredFormatting);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? placeId, String? description,
            StructuredFormatting? structuredFormatting)?
        response,
  }) {
    return response?.call(placeId, description, structuredFormatting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? placeId, String? description,
            StructuredFormatting? structuredFormatting)?
        response,
    required TResult orElse(),
  }) {
    if (response != null) {
      return response(placeId, description, structuredFormatting);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DestinationApiResponse value) response,
  }) {
    return response(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DestinationApiResponse value)? response,
  }) {
    return response?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DestinationApiResponse value)? response,
    required TResult orElse(),
  }) {
    if (response != null) {
      return response(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DestinationApiResponseToJson(
      this,
    );
  }
}

abstract class DestinationApiResponse extends DestinationApi {
  const factory DestinationApiResponse(
          {required final String? placeId,
          required final String? description,
          required final StructuredFormatting? structuredFormatting}) =
      _$DestinationApiResponse;
  const DestinationApiResponse._() : super._();

  factory DestinationApiResponse.fromJson(Map<String, dynamic> json) =
      _$DestinationApiResponse.fromJson;

  @override
  String? get placeId;
  @override
  String? get description;
  @override
  StructuredFormatting? get structuredFormatting;
  @override
  @JsonKey(ignore: true)
  _$$DestinationApiResponseCopyWith<_$DestinationApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

StructuredFormatting _$StructuredFormattingFromJson(Map<String, dynamic> json) {
  return _StructuredFormatting.fromJson(json);
}

/// @nodoc
mixin _$StructuredFormatting {
  String get mainText => throw _privateConstructorUsedError;
  String get secondaryText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructuredFormattingCopyWith<StructuredFormatting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructuredFormattingCopyWith<$Res> {
  factory $StructuredFormattingCopyWith(StructuredFormatting value,
          $Res Function(StructuredFormatting) then) =
      _$StructuredFormattingCopyWithImpl<$Res, StructuredFormatting>;
  @useResult
  $Res call({String mainText, String secondaryText});
}

/// @nodoc
class _$StructuredFormattingCopyWithImpl<$Res,
        $Val extends StructuredFormatting>
    implements $StructuredFormattingCopyWith<$Res> {
  _$StructuredFormattingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainText = null,
    Object? secondaryText = null,
  }) {
    return _then(_value.copyWith(
      mainText: null == mainText
          ? _value.mainText
          : mainText // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryText: null == secondaryText
          ? _value.secondaryText
          : secondaryText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StructuredFormattingCopyWith<$Res>
    implements $StructuredFormattingCopyWith<$Res> {
  factory _$$_StructuredFormattingCopyWith(_$_StructuredFormatting value,
          $Res Function(_$_StructuredFormatting) then) =
      __$$_StructuredFormattingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String mainText, String secondaryText});
}

/// @nodoc
class __$$_StructuredFormattingCopyWithImpl<$Res>
    extends _$StructuredFormattingCopyWithImpl<$Res, _$_StructuredFormatting>
    implements _$$_StructuredFormattingCopyWith<$Res> {
  __$$_StructuredFormattingCopyWithImpl(_$_StructuredFormatting _value,
      $Res Function(_$_StructuredFormatting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainText = null,
    Object? secondaryText = null,
  }) {
    return _then(_$_StructuredFormatting(
      mainText: null == mainText
          ? _value.mainText
          : mainText // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryText: null == secondaryText
          ? _value.secondaryText
          : secondaryText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StructuredFormatting implements _StructuredFormatting {
  const _$_StructuredFormatting(
      {required this.mainText, required this.secondaryText});

  factory _$_StructuredFormatting.fromJson(Map<String, dynamic> json) =>
      _$$_StructuredFormattingFromJson(json);

  @override
  final String mainText;
  @override
  final String secondaryText;

  @override
  String toString() {
    return 'StructuredFormatting(mainText: $mainText, secondaryText: $secondaryText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StructuredFormatting &&
            (identical(other.mainText, mainText) ||
                other.mainText == mainText) &&
            (identical(other.secondaryText, secondaryText) ||
                other.secondaryText == secondaryText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mainText, secondaryText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StructuredFormattingCopyWith<_$_StructuredFormatting> get copyWith =>
      __$$_StructuredFormattingCopyWithImpl<_$_StructuredFormatting>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StructuredFormattingToJson(
      this,
    );
  }
}

abstract class _StructuredFormatting implements StructuredFormatting {
  const factory _StructuredFormatting(
      {required final String mainText,
      required final String secondaryText}) = _$_StructuredFormatting;

  factory _StructuredFormatting.fromJson(Map<String, dynamic> json) =
      _$_StructuredFormatting.fromJson;

  @override
  String get mainText;
  @override
  String get secondaryText;
  @override
  @JsonKey(ignore: true)
  _$$_StructuredFormattingCopyWith<_$_StructuredFormatting> get copyWith =>
      throw _privateConstructorUsedError;
}
