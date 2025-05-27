// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchaseModelImpl _$$PurchaseModelImplFromJson(Map<String, dynamic> json) =>
    _$PurchaseModelImpl(
      id: json['id'] as String?,
      productId: json['productId'] as String,
      productName: json['productName'] as String,
      quantity: (json['quantity'] as num).toInt(),
      originalQuantity: (json['originalQuantity'] as num).toInt(),
      purchasePrice: (json['purchasePrice'] as num).toInt(),
      purchaseDate: DateTime.parse(json['purchaseDate'] as String),
    );

Map<String, dynamic> _$$PurchaseModelImplToJson(_$PurchaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'productName': instance.productName,
      'quantity': instance.quantity,
      'originalQuantity': instance.originalQuantity,
      'purchasePrice': instance.purchasePrice,
      'purchaseDate': instance.purchaseDate.toIso8601String(),
    };
