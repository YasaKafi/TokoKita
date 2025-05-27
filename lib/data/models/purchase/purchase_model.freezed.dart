// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PurchaseModel _$PurchaseModelFromJson(Map<String, dynamic> json) {
  return _PurchaseModel.fromJson(json);
}

/// @nodoc
mixin _$PurchaseModel {
  String? get id => throw _privateConstructorUsedError; // Firestore document ID
  String get productId => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get originalQuantity => throw _privateConstructorUsedError;
  int get purchasePrice => throw _privateConstructorUsedError;
  DateTime get purchaseDate => throw _privateConstructorUsedError;

  /// Serializes this PurchaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PurchaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PurchaseModelCopyWith<PurchaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseModelCopyWith<$Res> {
  factory $PurchaseModelCopyWith(
    PurchaseModel value,
    $Res Function(PurchaseModel) then,
  ) = _$PurchaseModelCopyWithImpl<$Res, PurchaseModel>;
  @useResult
  $Res call({
    String? id,
    String productId,
    String productName,
    int quantity,
    int originalQuantity,
    int purchasePrice,
    DateTime purchaseDate,
  });
}

/// @nodoc
class _$PurchaseModelCopyWithImpl<$Res, $Val extends PurchaseModel>
    implements $PurchaseModelCopyWith<$Res> {
  _$PurchaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PurchaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productId = null,
    Object? productName = null,
    Object? quantity = null,
    Object? originalQuantity = null,
    Object? purchasePrice = null,
    Object? purchaseDate = null,
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
            originalQuantity:
                null == originalQuantity
                    ? _value.originalQuantity
                    : originalQuantity // ignore: cast_nullable_to_non_nullable
                        as int,
            purchasePrice:
                null == purchasePrice
                    ? _value.purchasePrice
                    : purchasePrice // ignore: cast_nullable_to_non_nullable
                        as int,
            purchaseDate:
                null == purchaseDate
                    ? _value.purchaseDate
                    : purchaseDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PurchaseModelImplCopyWith<$Res>
    implements $PurchaseModelCopyWith<$Res> {
  factory _$$PurchaseModelImplCopyWith(
    _$PurchaseModelImpl value,
    $Res Function(_$PurchaseModelImpl) then,
  ) = __$$PurchaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String productId,
    String productName,
    int quantity,
    int originalQuantity,
    int purchasePrice,
    DateTime purchaseDate,
  });
}

/// @nodoc
class __$$PurchaseModelImplCopyWithImpl<$Res>
    extends _$PurchaseModelCopyWithImpl<$Res, _$PurchaseModelImpl>
    implements _$$PurchaseModelImplCopyWith<$Res> {
  __$$PurchaseModelImplCopyWithImpl(
    _$PurchaseModelImpl _value,
    $Res Function(_$PurchaseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PurchaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productId = null,
    Object? productName = null,
    Object? quantity = null,
    Object? originalQuantity = null,
    Object? purchasePrice = null,
    Object? purchaseDate = null,
  }) {
    return _then(
      _$PurchaseModelImpl(
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
        originalQuantity:
            null == originalQuantity
                ? _value.originalQuantity
                : originalQuantity // ignore: cast_nullable_to_non_nullable
                    as int,
        purchasePrice:
            null == purchasePrice
                ? _value.purchasePrice
                : purchasePrice // ignore: cast_nullable_to_non_nullable
                    as int,
        purchaseDate:
            null == purchaseDate
                ? _value.purchaseDate
                : purchaseDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchaseModelImpl implements _PurchaseModel {
  const _$PurchaseModelImpl({
    this.id,
    required this.productId,
    required this.productName,
    required this.quantity,
    required this.originalQuantity,
    required this.purchasePrice,
    required this.purchaseDate,
  });

  factory _$PurchaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseModelImplFromJson(json);

  @override
  final String? id;
  // Firestore document ID
  @override
  final String productId;
  @override
  final String productName;
  @override
  final int quantity;
  @override
  final int originalQuantity;
  @override
  final int purchasePrice;
  @override
  final DateTime purchaseDate;

  @override
  String toString() {
    return 'PurchaseModel(id: $id, productId: $productId, productName: $productName, quantity: $quantity, originalQuantity: $originalQuantity, purchasePrice: $purchasePrice, purchaseDate: $purchaseDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.originalQuantity, originalQuantity) ||
                other.originalQuantity == originalQuantity) &&
            (identical(other.purchasePrice, purchasePrice) ||
                other.purchasePrice == purchasePrice) &&
            (identical(other.purchaseDate, purchaseDate) ||
                other.purchaseDate == purchaseDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    productId,
    productName,
    quantity,
    originalQuantity,
    purchasePrice,
    purchaseDate,
  );

  /// Create a copy of PurchaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseModelImplCopyWith<_$PurchaseModelImpl> get copyWith =>
      __$$PurchaseModelImplCopyWithImpl<_$PurchaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseModelImplToJson(this);
  }
}

abstract class _PurchaseModel implements PurchaseModel {
  const factory _PurchaseModel({
    final String? id,
    required final String productId,
    required final String productName,
    required final int quantity,
    required final int originalQuantity,
    required final int purchasePrice,
    required final DateTime purchaseDate,
  }) = _$PurchaseModelImpl;

  factory _PurchaseModel.fromJson(Map<String, dynamic> json) =
      _$PurchaseModelImpl.fromJson;

  @override
  String? get id; // Firestore document ID
  @override
  String get productId;
  @override
  String get productName;
  @override
  int get quantity;
  @override
  int get originalQuantity;
  @override
  int get purchasePrice;
  @override
  DateTime get purchaseDate;

  /// Create a copy of PurchaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PurchaseModelImplCopyWith<_$PurchaseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
