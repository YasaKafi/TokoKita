// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      unit: json['unit'] as String,
      sellingPrice: (json['sellingPrice'] as num).toInt(),
      entryDate: DateTime.parse(json['entryDate'] as String),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'unit': instance.unit,
      'sellingPrice': instance.sellingPrice,
      'entryDate': instance.entryDate.toIso8601String(),
    };
