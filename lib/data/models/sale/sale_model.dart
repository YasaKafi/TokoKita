import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_model.freezed.dart';
part 'sale_model.g.dart';

@freezed
class SaleModel with _$SaleModel {
  const factory SaleModel({
    String? id,
    required String productId,
    required String productName,
    required int quantity,
    required int sellingPrice,
    required int hpp,
    required DateTime saleDate,
  }) = _SaleModel;

  factory SaleModel.fromJson(Map<String, dynamic> json) => _$SaleModelFromJson(json);
}