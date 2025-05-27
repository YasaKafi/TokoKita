import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_model.freezed.dart';
part 'purchase_model.g.dart';

@freezed
class PurchaseModel with _$PurchaseModel {
  const factory PurchaseModel({
    String? id, // Firestore document ID
    required String productId,
    required String productName,
    required int quantity,
    required int originalQuantity,
    required int purchasePrice,
    required DateTime purchaseDate,
  }) = _PurchaseModel;

  factory PurchaseModel.fromJson(Map<String, dynamic> json) =>
      _$PurchaseModelFromJson(json);
}