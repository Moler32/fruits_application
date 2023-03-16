// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomePageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() emtyList,
    required TResult Function(List<String> fruits, List<String> descriptions)
        loadedList,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? emtyList,
    TResult? Function(List<String> fruits, List<String> descriptions)?
        loadedList,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? emtyList,
    TResult Function(List<String> fruits, List<String> descriptions)?
        loadedList,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(EmptyList value) emtyList,
    required TResult Function(LoadedList value) loadedList,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(EmptyList value)? emtyList,
    TResult? Function(LoadedList value)? loadedList,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(EmptyList value)? emtyList,
    TResult Function(LoadedList value)? loadedList,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res, HomePageState>;
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res, $Val extends HomePageState>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'HomePageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() emtyList,
    required TResult Function(List<String> fruits, List<String> descriptions)
        loadedList,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? emtyList,
    TResult? Function(List<String> fruits, List<String> descriptions)?
        loadedList,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? emtyList,
    TResult Function(List<String> fruits, List<String> descriptions)?
        loadedList,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(EmptyList value) emtyList,
    required TResult Function(LoadedList value) loadedList,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(EmptyList value)? emtyList,
    TResult? Function(LoadedList value)? loadedList,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(EmptyList value)? emtyList,
    TResult Function(LoadedList value)? loadedList,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements HomePageState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$EmptyListCopyWith<$Res> {
  factory _$$EmptyListCopyWith(
          _$EmptyList value, $Res Function(_$EmptyList) then) =
      __$$EmptyListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyListCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$EmptyList>
    implements _$$EmptyListCopyWith<$Res> {
  __$$EmptyListCopyWithImpl(
      _$EmptyList _value, $Res Function(_$EmptyList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyList implements EmptyList {
  const _$EmptyList();

  @override
  String toString() {
    return 'HomePageState.emtyList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() emtyList,
    required TResult Function(List<String> fruits, List<String> descriptions)
        loadedList,
    required TResult Function(String message) error,
  }) {
    return emtyList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? emtyList,
    TResult? Function(List<String> fruits, List<String> descriptions)?
        loadedList,
    TResult? Function(String message)? error,
  }) {
    return emtyList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? emtyList,
    TResult Function(List<String> fruits, List<String> descriptions)?
        loadedList,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (emtyList != null) {
      return emtyList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(EmptyList value) emtyList,
    required TResult Function(LoadedList value) loadedList,
    required TResult Function(Error value) error,
  }) {
    return emtyList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(EmptyList value)? emtyList,
    TResult? Function(LoadedList value)? loadedList,
    TResult? Function(Error value)? error,
  }) {
    return emtyList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(EmptyList value)? emtyList,
    TResult Function(LoadedList value)? loadedList,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (emtyList != null) {
      return emtyList(this);
    }
    return orElse();
  }
}

abstract class EmptyList implements HomePageState {
  const factory EmptyList() = _$EmptyList;
}

/// @nodoc
abstract class _$$LoadedListCopyWith<$Res> {
  factory _$$LoadedListCopyWith(
          _$LoadedList value, $Res Function(_$LoadedList) then) =
      __$$LoadedListCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> fruits, List<String> descriptions});
}

/// @nodoc
class __$$LoadedListCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$LoadedList>
    implements _$$LoadedListCopyWith<$Res> {
  __$$LoadedListCopyWithImpl(
      _$LoadedList _value, $Res Function(_$LoadedList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fruits = null,
    Object? descriptions = null,
  }) {
    return _then(_$LoadedList(
      null == fruits
          ? _value._fruits
          : fruits // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == descriptions
          ? _value._descriptions
          : descriptions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$LoadedList implements LoadedList {
  const _$LoadedList(final List<String> fruits, final List<String> descriptions)
      : _fruits = fruits,
        _descriptions = descriptions;

  final List<String> _fruits;
  @override
  List<String> get fruits {
    if (_fruits is EqualUnmodifiableListView) return _fruits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fruits);
  }

  final List<String> _descriptions;
  @override
  List<String> get descriptions {
    if (_descriptions is EqualUnmodifiableListView) return _descriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_descriptions);
  }

  @override
  String toString() {
    return 'HomePageState.loadedList(fruits: $fruits, descriptions: $descriptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedList &&
            const DeepCollectionEquality().equals(other._fruits, _fruits) &&
            const DeepCollectionEquality()
                .equals(other._descriptions, _descriptions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_fruits),
      const DeepCollectionEquality().hash(_descriptions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedListCopyWith<_$LoadedList> get copyWith =>
      __$$LoadedListCopyWithImpl<_$LoadedList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() emtyList,
    required TResult Function(List<String> fruits, List<String> descriptions)
        loadedList,
    required TResult Function(String message) error,
  }) {
    return loadedList(fruits, descriptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? emtyList,
    TResult? Function(List<String> fruits, List<String> descriptions)?
        loadedList,
    TResult? Function(String message)? error,
  }) {
    return loadedList?.call(fruits, descriptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? emtyList,
    TResult Function(List<String> fruits, List<String> descriptions)?
        loadedList,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedList != null) {
      return loadedList(fruits, descriptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(EmptyList value) emtyList,
    required TResult Function(LoadedList value) loadedList,
    required TResult Function(Error value) error,
  }) {
    return loadedList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(EmptyList value)? emtyList,
    TResult? Function(LoadedList value)? loadedList,
    TResult? Function(Error value)? error,
  }) {
    return loadedList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(EmptyList value)? emtyList,
    TResult Function(LoadedList value)? loadedList,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedList != null) {
      return loadedList(this);
    }
    return orElse();
  }
}

abstract class LoadedList implements HomePageState {
  const factory LoadedList(
          final List<String> fruits, final List<String> descriptions) =
      _$LoadedList;

  List<String> get fruits;
  List<String> get descriptions;
  @JsonKey(ignore: true)
  _$$LoadedListCopyWith<_$LoadedList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$Error(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomePageState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() emtyList,
    required TResult Function(List<String> fruits, List<String> descriptions)
        loadedList,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? emtyList,
    TResult? Function(List<String> fruits, List<String> descriptions)?
        loadedList,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? emtyList,
    TResult Function(List<String> fruits, List<String> descriptions)?
        loadedList,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(EmptyList value) emtyList,
    required TResult Function(LoadedList value) loadedList,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(EmptyList value)? emtyList,
    TResult? Function(LoadedList value)? loadedList,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(EmptyList value)? emtyList,
    TResult Function(LoadedList value)? loadedList,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements HomePageState {
  const factory Error(final String message) = _$Error;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}
