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
  List<Destination> get destination => throw _privateConstructorUsedError;

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
  $Res call({List<Destination> destination});
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
    Object? destination = null,
  }) {
    return _then(_value.copyWith(
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as List<Destination>,
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
  $Res call({List<Destination> destination});
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
    Object? destination = null,
  }) {
    return _then(_$_SearchDestinationState(
      destination: null == destination
          ? _value._destination
          : destination // ignore: cast_nullable_to_non_nullable
              as List<Destination>,
    ));
  }
}

/// @nodoc

class _$_SearchDestinationState implements _SearchDestinationState {
  const _$_SearchDestinationState(
      {final List<Destination> destination = const <Destination>[]})
      : _destination = destination;

  final List<Destination> _destination;
  @override
  @JsonKey()
  List<Destination> get destination {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_destination);
  }

  @override
  String toString() {
    return 'SearchDestinationState(destination: $destination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchDestinationState &&
            const DeepCollectionEquality()
                .equals(other._destination, _destination));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_destination));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchDestinationStateCopyWith<_$_SearchDestinationState> get copyWith =>
      __$$_SearchDestinationStateCopyWithImpl<_$_SearchDestinationState>(
          this, _$identity);
}

abstract class _SearchDestinationState implements SearchDestinationState {
  const factory _SearchDestinationState({final List<Destination> destination}) =
      _$_SearchDestinationState;

  @override
  List<Destination> get destination;
  @override
  @JsonKey(ignore: true)
  _$$_SearchDestinationStateCopyWith<_$_SearchDestinationState> get copyWith =>
      throw _privateConstructorUsedError;
}
