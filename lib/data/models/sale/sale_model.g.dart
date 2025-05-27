// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaleModelImpl _$$SaleModelImplFromJson(Map<String, dynamic> json) =>
    _$SaleModelImpl(
      id: json['id'] as String?,
      productId: json['productId'] as String,
      productName: json['productName'] as String,
      quantity: (json['quantity'] as num).toInt(),
      sellingPrice: (json['sellingPrice'] as num).toInt(),
      hpp: (json['hpp'] as num).toInt(),
      saleDate: DateTime.parse(json['saleDate'] as String),
    );

Map<String, dynamic> _$$SaleModelImplToJson(_$SaleModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'productName': instance.productName,
      'quantity': instance.quantity,
      'sellingPrice': instance.sellingPrice,
      'hpp': instance.hpp,
      'saleDate': instance.saleDate.toIso8601String(),
    };
