// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StockEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String id) getById,
    required TResult Function(ProductModel product) add,
    required TResult Function(String id, ProductModel updated) update,
    required TResult Function(String id) delete,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String id)? getById,
    TResult? Function(ProductModel product)? add,
    TResult? Function(String id, ProductModel updated)? update,
    TResult? Function(String id)? delete,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String id)? getById,
    TResult Function(ProductModel product)? add,
    TResult Function(String id, ProductModel updated)? update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllProducts value) getAll,
    required TResult Function(GetProductById value) getById,
    required TResult Function(AddProduct value) add,
    required TResult Function(UpdateProduct value) update,
    required TResult Function(DeleteProduct value) delete,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllProducts value)? getAll,
    TResult? Function(GetProductById value)? getById,
    TResult? Function(AddProduct value)? add,
    TResult? Function(UpdateProduct value)? update,
    TResult? Function(DeleteProduct value)? delete,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllProducts value)? getAll,
    TResult Function(GetProductById value)? getById,
    TResult Function(AddProduct value)? add,
    TResult Function(UpdateProduct value)? update,
    TResult Function(DeleteProduct value)? delete,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockEventCopyWith<$Res> {
  factory $StockEventCopyWith(
    StockEvent value,
    $Res Function(StockEvent) then,
  ) = _$StockEventCopyWithImpl<$Res, StockEvent>;
}

/// @nodoc
class _$StockEventCopyWithImpl<$Res, $Val extends StockEvent>
    implements $StockEventCopyWith<$Res> {
  _$StockEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAllProductsImplCopyWith<$Res> {
  factory _$$GetAllProductsImplCopyWith(
    _$GetAllProductsImpl value,
    $Res Function(_$GetAllProductsImpl) then,
  ) = __$$GetAllProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllProductsImplCopyWithImpl<$Res>
    extends _$StockEventCopyWithImpl<$Res, _$GetAllProductsImpl>
    implements _$$GetAllProductsImplCopyWith<$Res> {
  __$$GetAllProductsImplCopyWithImpl(
    _$GetAllProductsImpl _value,
    $Res Function(_$GetAllProductsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StockEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllProductsImpl implements GetAllProducts {
  const _$GetAllProductsImpl();

  @override
  String toString() {
    return 'StockEvent.getAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String id) getById,
    required TResult Function(ProductModel product) add,
    required TResult Function(String id, ProductModel updated) update,
    required TResult Function(String id) delete,
  }) {
    return getAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String id)? getById,
    TResult? Function(ProductModel product)? add,
    TResult? Function(String id, ProductModel updated)? update,
    TResult? Function(String id)? delete,
  }) {
    return getAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String id)? getById,
    TResult Function(ProductModel product)? add,
    TResult Function(String id, ProductModel updated)? update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllProducts value) getAll,
    required TResult Function(GetProductById value) getById,
    required TResult Function(AddProduct value) add,
    required TResult Function(UpdateProduct value) update,
    required TResult Function(DeleteProduct value) delete,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllProducts value)? getAll,
    TResult? Function(GetProductById value)? getById,
    TResult? Function(AddProduct value)? add,
    TResult? Function(UpdateProduct value)? update,
    TResult? Function(DeleteProduct value)? delete,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllProducts value)? getAll,
    TResult Function(GetProductById value)? getById,
    TResult Function(AddProduct value)? add,
    TResult Function(UpdateProduct value)? update,
    TResult Function(DeleteProduct value)? delete,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(this);
    }
    return orElse();
  }
}

abstract class GetAllProducts implements StockEvent {
  const factory GetAllProducts() = _$GetAllProductsImpl;
}

/// @nodoc
abstract class _$$GetProductByIdImplCopyWith<$Res> {
  factory _$$GetProductByIdImplCopyWith(
    _$GetProductByIdImpl value,
    $Res Function(_$GetProductByIdImpl) then,
  ) = __$$GetProductByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetProductByIdImplCopyWithImpl<$Res>
    extends _$StockEventCopyWithImpl<$Res, _$GetProductByIdImpl>
    implements _$$GetProductByIdImplCopyWith<$Res> {
  __$$GetProductByIdImplCopyWithImpl(
    _$GetProductByIdImpl _value,
    $Res Function(_$GetProductByIdImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StockEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$GetProductByIdImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$GetProductByIdImpl implements GetProductById {
  const _$GetProductByIdImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'StockEvent.getById(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductByIdImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of StockEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductByIdImplCopyWith<_$GetProductByIdImpl> get copyWith =>
      __$$GetProductByIdImplCopyWithImpl<_$GetProductByIdImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String id) getById,
    required TResult Function(ProductModel product) add,
    required TResult Function(String id, ProductModel updated) update,
    required TResult Function(String id) delete,
  }) {
    return getById(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String id)? getById,
    TResult? Function(ProductModel product)? add,
    TResult? Function(String id, ProductModel updated)? update,
    TResult? Function(String id)? delete,
  }) {
    return getById?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String id)? getById,
    TResult Function(ProductModel product)? add,
    TResult Function(String id, ProductModel updated)? update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (getById != null) {
      return getById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllProducts value) getAll,
    required TResult Function(GetProductById value) getById,
    required TResult Function(AddProduct value) add,
    required TResult Function(UpdateProduct value) update,
    required TResult Function(DeleteProduct value) delete,
  }) {
    return getById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllProducts value)? getAll,
    TResult? Function(GetProductById value)? getById,
    TResult? Function(AddProduct value)? add,
    TResult? Function(UpdateProduct value)? update,
    TResult? Function(DeleteProduct value)? delete,
  }) {
    return getById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllProducts value)? getAll,
    TResult Function(GetProductById value)? getById,
    TResult Function(AddProduct value)? add,
    TResult Function(UpdateProduct value)? update,
    TResult Function(DeleteProduct value)? delete,
    required TResult orElse(),
  }) {
    if (getById != null) {
      return getById(this);
    }
    return orElse();
  }
}

abstract class GetProductById implements StockEvent {
  const factory GetProductById(final String id) = _$GetProductByIdImpl;

  String get id;

  /// Create a copy of StockEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProductByIdImplCopyWith<_$GetProductByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductImplCopyWith<$Res> {
  factory _$$AddProductImplCopyWith(
    _$AddProductImpl value,
    $Res Function(_$AddProductImpl) then,
  ) = __$$AddProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$AddProductImplCopyWithImpl<$Res>
    extends _$StockEventCopyWithImpl<$Res, _$AddProductImpl>
    implements _$$AddProductImplCopyWith<$Res> {
  __$$AddProductImplCopyWithImpl(
    _$AddProductImpl _value,
    $Res Function(_$AddProductImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StockEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? product = null}) {
    return _then(
      _$AddProductImpl(
        null == product
            ? _value.product
            : product // ignore: cast_nullable_to_non_nullable
                as ProductModel,
      ),
    );
  }

  /// Create a copy of StockEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$AddProductImpl implements AddProduct {
  const _$AddProductImpl(this.product);

  @override
  final ProductModel product;

  @override
  String toString() {
    return 'StockEvent.add(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of StockEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductImplCopyWith<_$AddProductImpl> get copyWith =>
      __$$AddProductImplCopyWithImpl<_$AddProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String id) getById,
    required TResult Function(ProductModel product) add,
    required TResult Function(String id, ProductModel updated) update,
    required TResult Function(String id) delete,
  }) {
    return add(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String id)? getById,
    TResult? Function(ProductModel product)? add,
    TResult? Function(String id, ProductModel updated)? update,
    TResult? Function(String id)? delete,
  }) {
    return add?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String id)? getById,
    TResult Function(ProductModel product)? add,
    TResult Function(String id, ProductModel updated)? update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllProducts value) getAll,
    required TResult Function(GetProductById value) getById,
    required TResult Function(AddProduct value) add,
    required TResult Function(UpdateProduct value) update,
    required TResult Function(DeleteProduct value) delete,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllProducts value)? getAll,
    TResult? Function(GetProductById value)? getById,
    TResult? Function(AddProduct value)? add,
    TResult? Function(UpdateProduct value)? update,
    TResult? Function(DeleteProduct value)? delete,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllProducts value)? getAll,
    TResult Function(GetProductById value)? getById,
    TResult Function(AddProduct value)? add,
    TResult Function(UpdateProduct value)? update,
    TResult Function(DeleteProduct value)? delete,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class AddProduct implements StockEvent {
  const factory AddProduct(final ProductModel product) = _$AddProductImpl;

  ProductModel get product;

  /// Create a copy of StockEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductImplCopyWith<_$AddProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProductImplCopyWith<$Res> {
  factory _$$UpdateProductImplCopyWith(
    _$UpdateProductImpl value,
    $Res Function(_$UpdateProductImpl) then,
  ) = __$$UpdateProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, ProductModel updated});

  $ProductModelCopyWith<$Res> get updated;
}

/// @nodoc
class __$$UpdateProductImplCopyWithImpl<$Res>
    extends _$StockEventCopyWithImpl<$Res, _$UpdateProductImpl>
    implements _$$UpdateProductImplCopyWith<$Res> {
  __$$UpdateProductImplCopyWithImpl(
    _$UpdateProductImpl _value,
    $Res Function(_$UpdateProductImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StockEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? updated = null}) {
    return _then(
      _$UpdateProductImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as String,
        null == updated
            ? _value.updated
            : updated // ignore: cast_nullable_to_non_nullable
                as ProductModel,
      ),
    );
  }

  /// Create a copy of StockEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get updated {
    return $ProductModelCopyWith<$Res>(_value.updated, (value) {
      return _then(_value.copyWith(updated: value));
    });
  }
}

/// @nodoc

class _$UpdateProductImpl implements UpdateProduct {
  const _$UpdateProductImpl(this.id, this.updated);

  @override
  final String id;
  @override
  final ProductModel updated;

  @override
  String toString() {
    return 'StockEvent.update(id: $id, updated: $updated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, updated);

  /// Create a copy of StockEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProductImplCopyWith<_$UpdateProductImpl> get copyWith =>
      __$$UpdateProductImplCopyWithImpl<_$UpdateProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String id) getById,
    required TResult Function(ProductModel product) add,
    required TResult Function(String id, ProductModel updated) update,
    required TResult Function(String id) delete,
  }) {
    return update(id, updated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String id)? getById,
    TResult? Function(ProductModel product)? add,
    TResult? Function(String id, ProductModel updated)? update,
    TResult? Function(String id)? delete,
  }) {
    return update?.call(id, updated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String id)? getById,
    TResult Function(ProductModel product)? add,
    TResult Function(String id, ProductModel updated)? update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(id, updated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllProducts value) getAll,
    required TResult Function(GetProductById value) getById,
    required TResult Function(AddProduct value) add,
    required TResult Function(UpdateProduct value) update,
    required TResult Function(DeleteProduct value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllProducts value)? getAll,
    TResult? Function(GetProductById value)? getById,
    TResult? Function(AddProduct value)? add,
    TResult? Function(UpdateProduct value)? update,
    TResult? Function(DeleteProduct value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllProducts value)? getAll,
    TResult Function(GetProductById value)? getById,
    TResult Function(AddProduct value)? add,
    TResult Function(UpdateProduct value)? update,
    TResult Function(DeleteProduct value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateProduct implements StockEvent {
  const factory UpdateProduct(final String id, final ProductModel updated) =
      _$UpdateProductImpl;

  String get id;
  ProductModel get updated;

  /// Create a copy of StockEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProductImplCopyWith<_$UpdateProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProductImplCopyWith<$Res> {
  factory _$$DeleteProductImplCopyWith(
    _$DeleteProductImpl value,
    $Res Function(_$DeleteProductImpl) then,
  ) = __$$DeleteProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteProductImplCopyWithImpl<$Res>
    extends _$StockEventCopyWithImpl<$Res, _$DeleteProductImpl>
    implements _$$DeleteProductImplCopyWith<$Res> {
  __$$DeleteProductImplCopyWithImpl(
    _$DeleteProductImpl _value,
    $Res Function(_$DeleteProductImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StockEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$DeleteProductImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$DeleteProductImpl implements DeleteProduct {
  const _$DeleteProductImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'StockEvent.delete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of StockEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProductImplCopyWith<_$DeleteProductImpl> get copyWith =>
      __$$DeleteProductImplCopyWithImpl<_$DeleteProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String id) getById,
    required TResult Function(ProductModel product) add,
    required TResult Function(String id, ProductModel updated) update,
    required TResult Function(String id) delete,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String id)? getById,
    TResult? Function(ProductModel product)? add,
    TResult? Function(String id, ProductModel updated)? update,
    TResult? Function(String id)? delete,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String id)? getById,
    TResult Function(ProductModel product)? add,
    TResult Function(String id, ProductModel updated)? update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllProducts value) getAll,
    required TResult Function(GetProductById value) getById,
    required TResult Function(AddProduct value) add,
    required TResult Function(UpdateProduct value) update,
    required TResult Function(DeleteProduct value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllProducts value)? getAll,
    TResult? Function(GetProductById value)? getById,
    TResult? Function(AddProduct value)? add,
    TResult? Function(UpdateProduct value)? update,
    TResult? Function(DeleteProduct value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllProducts value)? getAll,
    TResult Function(GetProductById value)? getById,
    TResult Function(AddProduct value)? add,
    TResult Function(UpdateProduct value)? update,
    TResult Function(DeleteProduct value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteProduct implements StockEvent {
  const factory DeleteProduct(final String id) = _$DeleteProductImpl;

  String get id;

  /// Create a copy of StockEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteProductImplCopyWith<_$DeleteProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StockState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<ProductModel> products,
      ProductModel? selected,
      Map<String, int>? currentStock,
    )
    success,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<ProductModel> products,
      ProductModel? selected,
      Map<String, int>? currentStock,
    )?
    success,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<ProductModel> products,
      ProductModel? selected,
      Map<String, int>? currentStock,
    )?
    success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockStateCopyWith<$Res> {
  factory $StockStateCopyWith(
    StockState value,
    $Res Function(StockState) then,
  ) = _$StockStateCopyWithImpl<$Res, StockState>;
}

/// @nodoc
class _$StockStateCopyWithImpl<$Res, $Val extends StockState>
    implements $StockStateCopyWith<$Res> {
  _$StockStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$StockStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StockState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'StockState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<ProductModel> products,
      ProductModel? selected,
      Map<String, int>? currentStock,
    )
    success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<ProductModel> products,
      ProductModel? selected,
      Map<String, int>? currentStock,
    )?
    success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<ProductModel> products,
      ProductModel? selected,
      Map<String, int>? currentStock,
    )?
    success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StockState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$StockStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StockState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'StockState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<ProductModel> products,
      ProductModel? selected,
      Map<String, int>? currentStock,
    )
    success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<ProductModel> products,
      ProductModel? selected,
      Map<String, int>? currentStock,
    )?
    success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<ProductModel> products,
      ProductModel? selected,
      Map<String, int>? currentStock,
    )?
    success,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements StockState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    List<ProductModel> products,
    ProductModel? selected,
    Map<String, int>? currentStock,
  });

  $ProductModelCopyWith<$Res>? get selected;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$StockStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StockState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? selected = freezed,
    Object? currentStock = freezed,
  }) {
    return _then(
      _$SuccessImpl(
        products:
            null == products
                ? _value._products
                : products // ignore: cast_nullable_to_non_nullable
                    as List<ProductModel>,
        selected:
            freezed == selected
                ? _value.selected
                : selected // ignore: cast_nullable_to_non_nullable
                    as ProductModel?,
        currentStock:
            freezed == currentStock
                ? _value._currentStock
                : currentStock // ignore: cast_nullable_to_non_nullable
                    as Map<String, int>?,
      ),
    );
  }

  /// Create a copy of StockState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res>? get selected {
    if (_value.selected == null) {
      return null;
    }

    return $ProductModelCopyWith<$Res>(_value.selected!, (value) {
      return _then(_value.copyWith(selected: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({
    required final List<ProductModel> products,
    this.selected,
    final Map<String, int>? currentStock,
  }) : _products = products,
       _currentStock = currentStock;

  final List<ProductModel> _products;
  @override
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final ProductModel? selected;
  final Map<String, int>? _currentStock;
  @override
  Map<String, int>? get currentStock {
    final value = _currentStock;
    if (value == null) return null;
    if (_currentStock is EqualUnmodifiableMapView) return _currentStock;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'StockState.success(products: $products, selected: $selected, currentStock: $currentStock)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            const DeepCollectionEquality().equals(
              other._currentStock,
              _currentStock,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_products),
    selected,
    const DeepCollectionEquality().hash(_currentStock),
  );

  /// Create a copy of StockState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<ProductModel> products,
      ProductModel? selected,
      Map<String, int>? currentStock,
    )
    success,
    required TResult Function(String message) error,
  }) {
    return success(products, selected, currentStock);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<ProductModel> products,
      ProductModel? selected,
      Map<String, int>? currentStock,
    )?
    success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(products, selected, currentStock);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<ProductModel> products,
      ProductModel? selected,
      Map<String, int>? currentStock,
    )?
    success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(products, selected, currentStock);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements StockState {
  const factory _Success({
    required final List<ProductModel> products,
    final ProductModel? selected,
    final Map<String, int>? currentStock,
  }) = _$SuccessImpl;

  List<ProductModel> get products;
  ProductModel? get selected;
  Map<String, int>? get currentStock;

  /// Create a copy of StockState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$StockStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StockState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'StockState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of StockState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<ProductModel> products,
      ProductModel? selected,
      Map<String, int>? currentStock,
    )
    success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<ProductModel> products,
      ProductModel? selected,
      Map<String, int>? currentStock,
    )?
    success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<ProductModel> products,
      ProductModel? selected,
      Map<String, int>? currentStock,
    )?
    success,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements StockState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of StockState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
