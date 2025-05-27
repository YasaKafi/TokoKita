// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SaleModel _$SaleModelFromJson(Map<String, dynamic> json) {
  return _SaleModel.fromJson(json);
}

/// @nodoc
mixin _$SaleModel {
  String? get id => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get sellingPrice => throw _privateConstructorUsedError;
  int get hpp => throw _privateConstructorUsedError;
  DateTime get saleDate => throw _privateConstructorUsedError;

  /// Serializes this SaleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SaleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SaleModelCopyWith<SaleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleModelCopyWith<$Res> {
  factory $SaleModelCopyWith(SaleModel value, $Res Function(SaleModel) then) =
      _$SaleModelCopyWithImpl<$Res, SaleModel>;
  @useResult
  $Res call({
    String? id,
    String productId,
    String productName,
    int quantity,
    int sellingPrice,
    int hpp,
    DateTime saleDate,
  });
}

/// @nodoc
class _$SaleModelCopyWithImpl<$Res, $Val extends SaleModel>
    implements $SaleModelCopyWith<$Res> {
  _$SaleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productId = null,
    Object? productName = null,
    Object? quantity = null,
    Object? sellingPrice = null,
    Object? hpp = null,
    Object? saleDate = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            productId:
                null == productId
                    ? _value.productId
                    : productId // ignore: cast_nullable_to_non_nullable
                        as String,
            productName:
                null == productName
                    ? _value.productName
                    : productName // ignore: cast_nullable_to_non_nullable
                        as String,
            quantity:
                null == quantity
                    ? _value.quantity
                    : quantity // ignore: cast_nullable_to_non_nullable
                        as int,
            sellingPrice:
                null == sellingPrice
                    ? _value.sellingPrice
                    : sellingPrice // ignore: cast_nullable_to_non_nullable
                        as int,
            hpp:
                null == hpp
                    ? _value.hpp
                    : hpp // ignore: cast_nullable_to_non_nullable
                        as int,
            saleDate:
                null == saleDate
                    ? _value.saleDate
                    : saleDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SaleModelImplCopyWith<$Res>
    implements $SaleModelCopyWith<$Res> {
  factory _$$SaleModelImplCopyWith(
    _$SaleModelImpl value,
    $Res Function(_$SaleModelImpl) then,
  ) = __$$SaleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String productId,
    String productName,
    int quantity,
    int sellingPrice,
    int hpp,
    DateTime saleDate,
  });
}

/// @nodoc
class __$$SaleModelImplCopyWithImpl<$Res>
    extends _$SaleModelCopyWithImpl<$Res, _$SaleModelImpl>
    implements _$$SaleModelImplCopyWith<$Res> {
  __$$SaleModelImplCopyWithImpl(
    _$SaleModelImpl _value,
    $Res Function(_$SaleModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SaleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productId = null,
    Object? productName = null,
    Object? quantity = null,
    Object? sellingPrice = null,
    Object? hpp = null,
    Object? saleDate = null,
  }) {
    return _then(
      _$SaleModelImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        productId:
            null == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                    as String,
        productName:
            null == productName
                ? _value.productName
                : productName // ignore: cast_nullable_to_non_nullable
                    as String,
        quantity:
            null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                    as int,
        sellingPrice:
            null == sellingPrice
                ? _value.sellingPrice
                : sellingPrice // ignore: cast_nullable_to_non_nullable
                    as int,
        hpp:
            null == hpp
                ? _value.hpp
                : hpp // ignore: cast_nullable_to_non_nullable
                    as int,
        saleDate:
            null == saleDate
                ? _value.saleDate
                : saleDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SaleModelImpl implements _SaleModel {
  const _$SaleModelImpl({
    this.id,
    required this.productId,
    required this.productName,
    required this.quantity,
    required this.sellingPrice,
    required this.hpp,
    required this.saleDate,
  });

  factory _$SaleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaleModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String productId;
  @override
  final String productName;
  @override
  final int quantity;
  @override
  final int sellingPrice;
  @override
  final int hpp;
  @override
  final DateTime saleDate;

  @override
  String toString() {
    return 'SaleModel(id: $id, productId: $productId, productName: $productName, quantity: $quantity, sellingPrice: $sellingPrice, hpp: $hpp, saleDate: $saleDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.hpp, hpp) || other.hpp == hpp) &&
            (identical(other.saleDate, saleDate) ||
                other.saleDate == saleDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    productId,
    productName,
    quantity,
    sellingPrice,
    hpp,
    saleDate,
  );

  /// Create a copy of SaleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleModelImplCopyWith<_$SaleModelImpl> get copyWith =>
      __$$SaleModelImplCopyWithImpl<_$SaleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleModelImplToJson(this);
  }
}

abstract class _SaleModel implements SaleModel {
  const factory _SaleModel({
    final String? id,
    required final String productId,
    required final String productName,
    required final int quantity,
    required final int sellingPrice,
    required final int hpp,
    required final DateTime saleDate,
  }) = _$SaleModelImpl;

  factory _SaleModel.fromJson(Map<String, dynamic> json) =
      _$SaleModelImpl.fromJson;

  @override
  String? get id;
  @override
  String get productId;
  @override
  String get productName;
  @override
  int get quantity;
  @override
  int get sellingPrice;
  @override
  int get hpp;
  @override
  DateTime get saleDate;

  /// Create a copy of SaleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaleModelImplCopyWith<_$SaleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
