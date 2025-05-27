// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ReportEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMonthlyReport,
    required TResult Function(int days) getDailyReports,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMonthlyReport,
    TResult? Function(int days)? getDailyReports,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMonthlyReport,
    TResult Function(int days)? getDailyReports,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMonthlyReport value) getMonthlyReport,
    required TResult Function(_GetDailyReports value) getDailyReports,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMonthlyReport value)? getMonthlyReport,
    TResult? Function(_GetDailyReports value)? getDailyReports,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMonthlyReport value)? getMonthlyReport,
    TResult Function(_GetDailyReports value)? getDailyReports,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportEventCopyWith<$Res> {
  factory $ReportEventCopyWith(
    ReportEvent value,
    $Res Function(ReportEvent) then,
  ) = _$ReportEventCopyWithImpl<$Res, ReportEvent>;
}

/// @nodoc
class _$ReportEventCopyWithImpl<$Res, $Val extends ReportEvent>
    implements $ReportEventCopyWith<$Res> {
  _$ReportEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetMonthlyReportImplCopyWith<$Res> {
  factory _$$GetMonthlyReportImplCopyWith(
    _$GetMonthlyReportImpl value,
    $Res Function(_$GetMonthlyReportImpl) then,
  ) = __$$GetMonthlyReportImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMonthlyReportImplCopyWithImpl<$Res>
    extends _$ReportEventCopyWithImpl<$Res, _$GetMonthlyReportImpl>
    implements _$$GetMonthlyReportImplCopyWith<$Res> {
  __$$GetMonthlyReportImplCopyWithImpl(
    _$GetMonthlyReportImpl _value,
    $Res Function(_$GetMonthlyReportImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetMonthlyReportImpl implements _GetMonthlyReport {
  const _$GetMonthlyReportImpl();

  @override
  String toString() {
    return 'ReportEvent.getMonthlyReport()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMonthlyReportImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMonthlyReport,
    required TResult Function(int days) getDailyReports,
  }) {
    return getMonthlyReport();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMonthlyReport,
    TResult? Function(int days)? getDailyReports,
  }) {
    return getMonthlyReport?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMonthlyReport,
    TResult Function(int days)? getDailyReports,
    required TResult orElse(),
  }) {
    if (getMonthlyReport != null) {
      return getMonthlyReport();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMonthlyReport value) getMonthlyReport,
    required TResult Function(_GetDailyReports value) getDailyReports,
  }) {
    return getMonthlyReport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMonthlyReport value)? getMonthlyReport,
    TResult? Function(_GetDailyReports value)? getDailyReports,
  }) {
    return getMonthlyReport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMonthlyReport value)? getMonthlyReport,
    TResult Function(_GetDailyReports value)? getDailyReports,
    required TResult orElse(),
  }) {
    if (getMonthlyReport != null) {
      return getMonthlyReport(this);
    }
    return orElse();
  }
}

abstract class _GetMonthlyReport implements ReportEvent {
  const factory _GetMonthlyReport() = _$GetMonthlyReportImpl;
}

/// @nodoc
abstract class _$$GetDailyReportsImplCopyWith<$Res> {
  factory _$$GetDailyReportsImplCopyWith(
    _$GetDailyReportsImpl value,
    $Res Function(_$GetDailyReportsImpl) then,
  ) = __$$GetDailyReportsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int days});
}

/// @nodoc
class __$$GetDailyReportsImplCopyWithImpl<$Res>
    extends _$ReportEventCopyWithImpl<$Res, _$GetDailyReportsImpl>
    implements _$$GetDailyReportsImplCopyWith<$Res> {
  __$$GetDailyReportsImplCopyWithImpl(
    _$GetDailyReportsImpl _value,
    $Res Function(_$GetDailyReportsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? days = null}) {
    return _then(
      _$GetDailyReportsImpl(
        days:
            null == days
                ? _value.days
                : days // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$GetDailyReportsImpl implements _GetDailyReports {
  const _$GetDailyReportsImpl({required this.days});

  @override
  final int days;

  @override
  String toString() {
    return 'ReportEvent.getDailyReports(days: $days)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDailyReportsImpl &&
            (identical(other.days, days) || other.days == days));
  }

  @override
  int get hashCode => Object.hash(runtimeType, days);

  /// Create a copy of ReportEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDailyReportsImplCopyWith<_$GetDailyReportsImpl> get copyWith =>
      __$$GetDailyReportsImplCopyWithImpl<_$GetDailyReportsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMonthlyReport,
    required TResult Function(int days) getDailyReports,
  }) {
    return getDailyReports(days);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMonthlyReport,
    TResult? Function(int days)? getDailyReports,
  }) {
    return getDailyReports?.call(days);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMonthlyReport,
    TResult Function(int days)? getDailyReports,
    required TResult orElse(),
  }) {
    if (getDailyReports != null) {
      return getDailyReports(days);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMonthlyReport value) getMonthlyReport,
    required TResult Function(_GetDailyReports value) getDailyReports,
  }) {
    return getDailyReports(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMonthlyReport value)? getMonthlyReport,
    TResult? Function(_GetDailyReports value)? getDailyReports,
  }) {
    return getDailyReports?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMonthlyReport value)? getMonthlyReport,
    TResult Function(_GetDailyReports value)? getDailyReports,
    required TResult orElse(),
  }) {
    if (getDailyReports != null) {
      return getDailyReports(this);
    }
    return orElse();
  }
}

abstract class _GetDailyReports implements ReportEvent {
  const factory _GetDailyReports({required final int days}) =
      _$GetDailyReportsImpl;

  int get days;

  /// Create a copy of ReportEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDailyReportsImplCopyWith<_$GetDailyReportsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReportState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<MonthlyReportModel> monthlyReports,
      List<DailyReportModel> dailyReports,
    )
    success,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<MonthlyReportModel> monthlyReports,
      List<DailyReportModel> dailyReports,
    )?
    success,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<MonthlyReportModel> monthlyReports,
      List<DailyReportModel> dailyReports,
    )?
    success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportStateCopyWith<$Res> {
  factory $ReportStateCopyWith(
    ReportState value,
    $Res Function(ReportState) then,
  ) = _$ReportStateCopyWithImpl<$Res, ReportState>;
}

/// @nodoc
class _$ReportStateCopyWithImpl<$Res, $Val extends ReportState>
    implements $ReportStateCopyWith<$Res> {
  _$ReportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ReportState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<MonthlyReportModel> monthlyReports,
      List<DailyReportModel> dailyReports,
    )
    success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<MonthlyReportModel> monthlyReports,
      List<DailyReportModel> dailyReports,
    )?
    success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<MonthlyReportModel> monthlyReports,
      List<DailyReportModel> dailyReports,
    )?
    success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ReportState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ReportState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<MonthlyReportModel> monthlyReports,
      List<DailyReportModel> dailyReports,
    )
    success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<MonthlyReportModel> monthlyReports,
      List<DailyReportModel> dailyReports,
    )?
    success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<MonthlyReportModel> monthlyReports,
      List<DailyReportModel> dailyReports,
    )?
    success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ReportState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    List<MonthlyReportModel> monthlyReports,
    List<DailyReportModel> dailyReports,
  });
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? monthlyReports = null, Object? dailyReports = null}) {
    return _then(
      _$SuccessImpl(
        monthlyReports:
            null == monthlyReports
                ? _value._monthlyReports
                : monthlyReports // ignore: cast_nullable_to_non_nullable
                    as List<MonthlyReportModel>,
        dailyReports:
            null == dailyReports
                ? _value._dailyReports
                : dailyReports // ignore: cast_nullable_to_non_nullable
                    as List<DailyReportModel>,
      ),
    );
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({
    required final List<MonthlyReportModel> monthlyReports,
    required final List<DailyReportModel> dailyReports,
  }) : _monthlyReports = monthlyReports,
       _dailyReports = dailyReports;

  final List<MonthlyReportModel> _monthlyReports;
  @override
  List<MonthlyReportModel> get monthlyReports {
    if (_monthlyReports is EqualUnmodifiableListView) return _monthlyReports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthlyReports);
  }

  final List<DailyReportModel> _dailyReports;
  @override
  List<DailyReportModel> get dailyReports {
    if (_dailyReports is EqualUnmodifiableListView) return _dailyReports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyReports);
  }

  @override
  String toString() {
    return 'ReportState.success(monthlyReports: $monthlyReports, dailyReports: $dailyReports)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(
              other._monthlyReports,
              _monthlyReports,
            ) &&
            const DeepCollectionEquality().equals(
              other._dailyReports,
              _dailyReports,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_monthlyReports),
    const DeepCollectionEquality().hash(_dailyReports),
  );

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<MonthlyReportModel> monthlyReports,
      List<DailyReportModel> dailyReports,
    )
    success,
    required TResult Function(String message) error,
  }) {
    return success(monthlyReports, dailyReports);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<MonthlyReportModel> monthlyReports,
      List<DailyReportModel> dailyReports,
    )?
    success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(monthlyReports, dailyReports);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<MonthlyReportModel> monthlyReports,
      List<DailyReportModel> dailyReports,
    )?
    success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(monthlyReports, dailyReports);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ReportState {
  const factory _Success({
    required final List<MonthlyReportModel> monthlyReports,
    required final List<DailyReportModel> dailyReports,
  }) = _$SuccessImpl;

  List<MonthlyReportModel> get monthlyReports;
  List<DailyReportModel> get dailyReports;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ReportState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<MonthlyReportModel> monthlyReports,
      List<DailyReportModel> dailyReports,
    )
    success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<MonthlyReportModel> monthlyReports,
      List<DailyReportModel> dailyReports,
    )?
    success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<MonthlyReportModel> monthlyReports,
      List<DailyReportModel> dailyReports,
    )?
    success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ReportState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
