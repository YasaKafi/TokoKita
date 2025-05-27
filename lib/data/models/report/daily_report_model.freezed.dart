// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DailyReportModel {
  DateTime get date => throw _privateConstructorUsedError;
  int get totalSales => throw _privateConstructorUsedError;
  int get totalHPP => throw _privateConstructorUsedError;
  int get grossProfit => throw _privateConstructorUsedError;

  /// Create a copy of DailyReportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyReportModelCopyWith<DailyReportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyReportModelCopyWith<$Res> {
  factory $DailyReportModelCopyWith(
    DailyReportModel value,
    $Res Function(DailyReportModel) then,
  ) = _$DailyReportModelCopyWithImpl<$Res, DailyReportModel>;
  @useResult
  $Res call({DateTime date, int totalSales, int totalHPP, int grossProfit});
}

/// @nodoc
class _$DailyReportModelCopyWithImpl<$Res, $Val extends DailyReportModel>
    implements $DailyReportModelCopyWith<$Res> {
  _$DailyReportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyReportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? totalSales = null,
    Object? totalHPP = null,
    Object? grossProfit = null,
  }) {
    return _then(
      _value.copyWith(
            date:
                null == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            totalSales:
                null == totalSales
                    ? _value.totalSales
                    : totalSales // ignore: cast_nullable_to_non_nullable
                        as int,
            totalHPP:
                null == totalHPP
                    ? _value.totalHPP
                    : totalHPP // ignore: cast_nullable_to_non_nullable
                        as int,
            grossProfit:
                null == grossProfit
                    ? _value.grossProfit
                    : grossProfit // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DailyReportModelImplCopyWith<$Res>
    implements $DailyReportModelCopyWith<$Res> {
  factory _$$DailyReportModelImplCopyWith(
    _$DailyReportModelImpl value,
    $Res Function(_$DailyReportModelImpl) then,
  ) = __$$DailyReportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, int totalSales, int totalHPP, int grossProfit});
}

/// @nodoc
class __$$DailyReportModelImplCopyWithImpl<$Res>
    extends _$DailyReportModelCopyWithImpl<$Res, _$DailyReportModelImpl>
    implements _$$DailyReportModelImplCopyWith<$Res> {
  __$$DailyReportModelImplCopyWithImpl(
    _$DailyReportModelImpl _value,
    $Res Function(_$DailyReportModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailyReportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? totalSales = null,
    Object? totalHPP = null,
    Object? grossProfit = null,
  }) {
    return _then(
      _$DailyReportModelImpl(
        date:
            null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        totalSales:
            null == totalSales
                ? _value.totalSales
                : totalSales // ignore: cast_nullable_to_non_nullable
                    as int,
        totalHPP:
            null == totalHPP
                ? _value.totalHPP
                : totalHPP // ignore: cast_nullable_to_non_nullable
                    as int,
        grossProfit:
            null == grossProfit
                ? _value.grossProfit
                : grossProfit // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$DailyReportModelImpl implements _DailyReportModel {
  const _$DailyReportModelImpl({
    required this.date,
    required this.totalSales,
    required this.totalHPP,
    required this.grossProfit,
  });

  @override
  final DateTime date;
  @override
  final int totalSales;
  @override
  final int totalHPP;
  @override
  final int grossProfit;

  @override
  String toString() {
    return 'DailyReportModel(date: $date, totalSales: $totalSales, totalHPP: $totalHPP, grossProfit: $grossProfit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyReportModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.totalSales, totalSales) ||
                other.totalSales == totalSales) &&
            (identical(other.totalHPP, totalHPP) ||
                other.totalHPP == totalHPP) &&
            (identical(other.grossProfit, grossProfit) ||
                other.grossProfit == grossProfit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, date, totalSales, totalHPP, grossProfit);

  /// Create a copy of DailyReportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyReportModelImplCopyWith<_$DailyReportModelImpl> get copyWith =>
      __$$DailyReportModelImplCopyWithImpl<_$DailyReportModelImpl>(
        this,
        _$identity,
      );
}

abstract class _DailyReportModel implements DailyReportModel {
  const factory _DailyReportModel({
    required final DateTime date,
    required final int totalSales,
    required final int totalHPP,
    required final int grossProfit,
  }) = _$DailyReportModelImpl;

  @override
  DateTime get date;
  @override
  int get totalSales;
  @override
  int get totalHPP;
  @override
  int get grossProfit;

  /// Create a copy of DailyReportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyReportModelImplCopyWith<_$DailyReportModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
