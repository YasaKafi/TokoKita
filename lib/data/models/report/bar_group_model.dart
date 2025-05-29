import 'package:freezed_annotation/freezed_annotation.dart';

part 'bar_group_model.freezed.dart';

@freezed
class BarGroupModel with _$BarGroupModel {
  const factory BarGroupModel({
    required String label,
    required int grossProfit,
  }) = _BarGroupModel;
}