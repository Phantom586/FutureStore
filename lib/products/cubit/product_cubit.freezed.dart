// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Product> productsList) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> productsList)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> productsList)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductListLoading value) loading,
    required TResult Function(ProductListLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductListLoading value)? loading,
    TResult Function(ProductListLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductListLoading value)? loading,
    TResult Function(ProductListLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;
}

/// @nodoc
abstract class _$$ProductListLoadingCopyWith<$Res> {
  factory _$$ProductListLoadingCopyWith(_$ProductListLoading value,
          $Res Function(_$ProductListLoading) then) =
      __$$ProductListLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductListLoadingCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements _$$ProductListLoadingCopyWith<$Res> {
  __$$ProductListLoadingCopyWithImpl(
      _$ProductListLoading _value, $Res Function(_$ProductListLoading) _then)
      : super(_value, (v) => _then(v as _$ProductListLoading));

  @override
  _$ProductListLoading get _value => super._value as _$ProductListLoading;
}

/// @nodoc

class _$ProductListLoading implements ProductListLoading {
  const _$ProductListLoading();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Product> productsList) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> productsList)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> productsList)? loaded,
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
    required TResult Function(ProductListLoading value) loading,
    required TResult Function(ProductListLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductListLoading value)? loading,
    TResult Function(ProductListLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductListLoading value)? loading,
    TResult Function(ProductListLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductListLoading implements ProductState {
  const factory ProductListLoading() = _$ProductListLoading;
}

/// @nodoc
abstract class _$$ProductListLoadedCopyWith<$Res> {
  factory _$$ProductListLoadedCopyWith(
          _$ProductListLoaded value, $Res Function(_$ProductListLoaded) then) =
      __$$ProductListLoadedCopyWithImpl<$Res>;
  $Res call({List<Product> productsList});
}

/// @nodoc
class __$$ProductListLoadedCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements _$$ProductListLoadedCopyWith<$Res> {
  __$$ProductListLoadedCopyWithImpl(
      _$ProductListLoaded _value, $Res Function(_$ProductListLoaded) _then)
      : super(_value, (v) => _then(v as _$ProductListLoaded));

  @override
  _$ProductListLoaded get _value => super._value as _$ProductListLoaded;

  @override
  $Res call({
    Object? productsList = freezed,
  }) {
    return _then(_$ProductListLoaded(
      productsList: productsList == freezed
          ? _value._productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$ProductListLoaded implements ProductListLoaded {
  const _$ProductListLoaded({required final List<Product> productsList})
      : _productsList = productsList;

  final List<Product> _productsList;
  @override
  List<Product> get productsList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsList);
  }

  @override
  String toString() {
    return 'ProductState.loaded(productsList: $productsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListLoaded &&
            const DeepCollectionEquality()
                .equals(other._productsList, _productsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productsList));

  @JsonKey(ignore: true)
  @override
  _$$ProductListLoadedCopyWith<_$ProductListLoaded> get copyWith =>
      __$$ProductListLoadedCopyWithImpl<_$ProductListLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Product> productsList) loaded,
  }) {
    return loaded(productsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> productsList)? loaded,
  }) {
    return loaded?.call(productsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> productsList)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(productsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductListLoading value) loading,
    required TResult Function(ProductListLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductListLoading value)? loading,
    TResult Function(ProductListLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductListLoading value)? loading,
    TResult Function(ProductListLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProductListLoaded implements ProductState {
  const factory ProductListLoaded({required final List<Product> productsList}) =
      _$ProductListLoaded;

  List<Product> get productsList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ProductListLoadedCopyWith<_$ProductListLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
