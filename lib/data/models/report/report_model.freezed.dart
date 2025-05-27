// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MonthlyReportModel {
  int get month => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  int get totalSales => throw _privateConstructorUsedError;
  int get totalPurchases => throw _privateConstructorUsedError;
  int get totalHPP => throw _privateConstructorUsedError;
  int get grossProfit => throw _privateConstructorUsedError;

  /// Create a copy of MonthlyReportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthlyReportModelCopyWith<MonthlyReportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyReportModelCopyWith<$Res> {
  factory $MonthlyReportModelCopyWith(
    MonthlyReportModel value,
    $Res Function(MonthlyReportModel) then,
  ) = _$MonthlyReportModelCopyWithImpl<$Res, MonthlyReportModel>;
  @useResult
  $Res call({
    int month,
    int year,
    int totalSales,
    int totalPurchases,
    int totalHPP,
    int grossProfit,
  });
}

/// @nodoc
class _$MonthlyReportModelCopyWithImpl<$Res, $Val extends MonthlyReportModel>
    implements $MonthlyReportModelCopyWith<$Res> {
  _$MonthlyReportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthlyReportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? year = null,
    Object? totalSales = null,
    Object? totalPurchases = null,
    Object? totalHPP = null,
    Object? grossProfit = null,
  }) {
    return _then(
      _value.copyWith(
            month:
                null == month
                    ? _value.month
                    : month // ignore: cast_nullable_to_non_nullable
                        as int,
            year:
                null == year
                    ? _value.year
                    : year // ignore: cast_nullable_to_non_nullable
                        as int,
            totalSales:
                null == totalSales
                    ? _value.totalSales
                    : totalSales // ignore: cast_nullable_to_non_nullable
                        as int,
            totalPurchases:
                null == totalPurchases
                    ? _value.totalPurchases
                    : totalPurchases // ignore: cast_nullable_to_non_nullable
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
abstract class _$$MonthlyReportModelImplCopyWith<$Res>
    implements $MonthlyReportModelCopyWith<$Res> {
  factory _$$MonthlyReportModelImplCopyWith(
    _$MonthlyReportModelImpl value,
    $Res Function(_$MonthlyReportModelImpl) then,
  ) = __$$MonthlyReportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int month,
    int year,
    int totalSales,
    int totalPurchases,
    int totalHPP,
    int grossProfit,
  });
}

/// @nodoc
class __$$MonthlyReportModelImplCopyWithImpl<$Res>
    extends _$MonthlyReportModelCopyWithImpl<$Res, _$MonthlyReportModelImpl>
    implements _$$MonthlyReportModelImplCopyWith<$Res> {
  __$$MonthlyReportModelImplCopyWithImpl(
    _$MonthlyReportModelImpl _value,
    $Res Function(_$MonthlyReportModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MonthlyReportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? year = null,
    Object? totalSales = null,
    Object? totalPurchases = null,
    Object? totalHPP = null,
    Object? grossProfit = null,
  }) {
    return _then(
      _$MonthlyReportModelImpl(
        month:
            null == month
                ? _value.month
                : month // ignore: cast_nullable_to_non_nullable
                    as int,
        year:
            null == year
                ? _value.year
                : year // ignore: cast_nullable_to_non_nullable
                    as int,
        totalSales:
            null == totalSales
                ? _value.totalSales
                : totalSales // ignore: cast_nullable_to_non_nullable
                    as int,
        totalPurchases:
            null == totalPurchases
                ? _value.totalPurchases
                : totalPurchases // ignore: cast_nullable_to_non_nullable
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

class _$MonthlyReportModelImpl implements _MonthlyReportModel {
  const _$MonthlyReportModelImpl({
    required this.month,
    required this.year,
    required this.totalSales,
    required this.totalPurchases,
    required this.totalHPP,
    required this.grossProfit,
  });

  @override
  final int month;
  @override
  final int year;
  @override
  final int totalSales;
  @override
  final int totalPurchases;
  @override
  final int totalHPP;
  @override
  final int grossProfit;

  @override
  String toString() {
    return 'MonthlyReportModel(month: $month, year: $year, totalSales: $totalSales, totalPurchases: $totalPurchases, totalHPP: $totalHPP, grossProfit: $grossProfit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyReportModelImpl &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.totalSales, totalSales) ||
                other.totalSales == totalSales) &&
            (identical(other.totalPurchases, totalPurchases) ||
                other.totalPurchases == totalPurchases) &&
            (identical(other.totalHPP, totalHPP) ||
                other.totalHPP == totalHPP) &&
            (identical(other.grossProfit, grossProfit) ||
                other.grossProfit == grossProfit));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    month,
    year,
    totalSales,
    totalPurchases,
    totalHPP,
    grossProfit,
  );

  /// Create a copy of MonthlyReportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyReportModelImplCopyWith<_$MonthlyReportModelImpl> get copyWith =>
      __$$MonthlyReportModelImplCopyWithImpl<_$MonthlyReportModelImpl>(
        this,
        _$identity,
      );
}

abstract class _MonthlyReportModel implements MonthlyReportModel {
  const factory _MonthlyReportModel({
    required final int month,
    required final int year,
    required final int totalSales,
    required final int totalPurchases,
    required final int totalHPP,
    required final int grossProfit,
  }) = _$MonthlyReportModelImpl;

  @override
  int get month;
  @override
  int get year;
  @override
  int get totalSales;
  @override
  int get totalPurchases;
  @override
  int get totalHPP;
  @override
  int get grossProfit;

  /// Create a copy of MonthlyReportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthlyReportModelImplCopyWith<_$MonthlyReportModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
