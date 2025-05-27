// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PurchaseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PurchaseModel purchase) addPurchase,
    required TResult Function() getAllPurchases,
    required TResult Function(String id) deletePurchase,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PurchaseModel purchase)? addPurchase,
    TResult? Function()? getAllPurchases,
    TResult? Function(String id)? deletePurchase,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PurchaseModel purchase)? addPurchase,
    TResult Function()? getAllPurchases,
    TResult Function(String id)? deletePurchase,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPurchase value) addPurchase,
    required TResult Function(_GetAllPurchases value) getAllPurchases,
    required TResult Function(_DeletePurchase value) deletePurchase,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPurchase value)? addPurchase,
    TResult? Function(_GetAllPurchases value)? getAllPurchases,
    TResult? Function(_DeletePurchase value)? deletePurchase,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPurchase value)? addPurchase,
    TResult Function(_GetAllPurchases value)? getAllPurchases,
    TResult Function(_DeletePurchase value)? deletePurchase,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseEventCopyWith<$Res> {
  factory $PurchaseEventCopyWith(
    PurchaseEvent value,
    $Res Function(PurchaseEvent) then,
  ) = _$PurchaseEventCopyWithImpl<$Res, PurchaseEvent>;
}

/// @nodoc
class _$PurchaseEventCopyWithImpl<$Res, $Val extends PurchaseEvent>
    implements $PurchaseEventCopyWith<$Res> {
  _$PurchaseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PurchaseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddPurchaseImplCopyWith<$Res> {
  factory _$$AddPurchaseImplCopyWith(
    _$AddPurchaseImpl value,
    $Res Function(_$AddPurchaseImpl) then,
  ) = __$$AddPurchaseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PurchaseModel purchase});

  $PurchaseModelCopyWith<$Res> get purchase;
}

/// @nodoc
class __$$AddPurchaseImplCopyWithImpl<$Res>
    extends _$PurchaseEventCopyWithImpl<$Res, _$AddPurchaseImpl>
    implements _$$AddPurchaseImplCopyWith<$Res> {
  __$$AddPurchaseImplCopyWithImpl(
    _$AddPurchaseImpl _value,
    $Res Function(_$AddPurchaseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PurchaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? purchase = null}) {
    return _then(
      _$AddPurchaseImpl(
        null == purchase
            ? _value.purchase
            : purchase // ignore: cast_nullable_to_non_nullable
                as PurchaseModel,
      ),
    );
  }

  /// Create a copy of PurchaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PurchaseModelCopyWith<$Res> get purchase {
    return $PurchaseModelCopyWith<$Res>(_value.purchase, (value) {
      return _then(_value.copyWith(purchase: value));
    });
  }
}

/// @nodoc

class _$AddPurchaseImpl implements _AddPurchase {
  const _$AddPurchaseImpl(this.purchase);

  @override
  final PurchaseModel purchase;

  @override
  String toString() {
    return 'PurchaseEvent.addPurchase(purchase: $purchase)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPurchaseImpl &&
            (identical(other.purchase, purchase) ||
                other.purchase == purchase));
  }

  @override
  int get hashCode => Object.hash(runtimeType, purchase);

  /// Create a copy of PurchaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPurchaseImplCopyWith<_$AddPurchaseImpl> get copyWith =>
      __$$AddPurchaseImplCopyWithImpl<_$AddPurchaseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PurchaseModel purchase) addPurchase,
    required TResult Function() getAllPurchases,
    required TResult Function(String id) deletePurchase,
  }) {
    return addPurchase(purchase);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PurchaseModel purchase)? addPurchase,
    TResult? Function()? getAllPurchases,
    TResult? Function(String id)? deletePurchase,
  }) {
    return addPurchase?.call(purchase);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PurchaseModel purchase)? addPurchase,
    TResult Function()? getAllPurchases,
    TResult Function(String id)? deletePurchase,
    required TResult orElse(),
  }) {
    if (addPurchase != null) {
      return addPurchase(purchase);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPurchase value) addPurchase,
    required TResult Function(_GetAllPurchases value) getAllPurchases,
    required TResult Function(_DeletePurchase value) deletePurchase,
  }) {
    return addPurchase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPurchase value)? addPurchase,
    TResult? Function(_GetAllPurchases value)? getAllPurchases,
    TResult? Function(_DeletePurchase value)? deletePurchase,
  }) {
    return addPurchase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPurchase value)? addPurchase,
    TResult Function(_GetAllPurchases value)? getAllPurchases,
    TResult Function(_DeletePurchase value)? deletePurchase,
    required TResult orElse(),
  }) {
    if (addPurchase != null) {
      return addPurchase(this);
    }
    return orElse();
  }
}

abstract class _AddPurchase implements PurchaseEvent {
  const factory _AddPurchase(final PurchaseModel purchase) = _$AddPurchaseImpl;

  PurchaseModel get purchase;

  /// Create a copy of PurchaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddPurchaseImplCopyWith<_$AddPurchaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllPurchasesImplCopyWith<$Res> {
  factory _$$GetAllPurchasesImplCopyWith(
    _$GetAllPurchasesImpl value,
    $Res Function(_$GetAllPurchasesImpl) then,
  ) = __$$GetAllPurchasesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllPurchasesImplCopyWithImpl<$Res>
    extends _$PurchaseEventCopyWithImpl<$Res, _$GetAllPurchasesImpl>
    implements _$$GetAllPurchasesImplCopyWith<$Res> {
  __$$GetAllPurchasesImplCopyWithImpl(
    _$GetAllPurchasesImpl _value,
    $Res Function(_$GetAllPurchasesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PurchaseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllPurchasesImpl implements _GetAllPurchases {
  const _$GetAllPurchasesImpl();

  @override
  String toString() {
    return 'PurchaseEvent.getAllPurchases()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllPurchasesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PurchaseModel purchase) addPurchase,
    required TResult Function() getAllPurchases,
    required TResult Function(String id) deletePurchase,
  }) {
    return getAllPurchases();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PurchaseModel purchase)? addPurchase,
    TResult? Function()? getAllPurchases,
    TResult? Function(String id)? deletePurchase,
  }) {
    return getAllPurchases?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PurchaseModel purchase)? addPurchase,
    TResult Function()? getAllPurchases,
    TResult Function(String id)? deletePurchase,
    required TResult orElse(),
  }) {
    if (getAllPurchases != null) {
      return getAllPurchases();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPurchase value) addPurchase,
    required TResult Function(_GetAllPurchases value) getAllPurchases,
    required TResult Function(_DeletePurchase value) deletePurchase,
  }) {
    return getAllPurchases(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPurchase value)? addPurchase,
    TResult? Function(_GetAllPurchases value)? getAllPurchases,
    TResult? Function(_DeletePurchase value)? deletePurchase,
  }) {
    return getAllPurchases?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPurchase value)? addPurchase,
    TResult Function(_GetAllPurchases value)? getAllPurchases,
    TResult Function(_DeletePurchase value)? deletePurchase,
    required TResult orElse(),
  }) {
    if (getAllPurchases != null) {
      return getAllPurchases(this);
    }
    return orElse();
  }
}

abstract class _GetAllPurchases implements PurchaseEvent {
  const factory _GetAllPurchases() = _$GetAllPurchasesImpl;
}

/// @nodoc
abstract class _$$DeletePurchaseImplCopyWith<$Res> {
  factory _$$DeletePurchaseImplCopyWith(
    _$DeletePurchaseImpl value,
    $Res Function(_$DeletePurchaseImpl) then,
  ) = __$$DeletePurchaseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeletePurchaseImplCopyWithImpl<$Res>
    extends _$PurchaseEventCopyWithImpl<$Res, _$DeletePurchaseImpl>
    implements _$$DeletePurchaseImplCopyWith<$Res> {
  __$$DeletePurchaseImplCopyWithImpl(
    _$DeletePurchaseImpl _value,
    $Res Function(_$DeletePurchaseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PurchaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$DeletePurchaseImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$DeletePurchaseImpl implements _DeletePurchase {
  const _$DeletePurchaseImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'PurchaseEvent.deletePurchase(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePurchaseImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of PurchaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePurchaseImplCopyWith<_$DeletePurchaseImpl> get copyWith =>
      __$$DeletePurchaseImplCopyWithImpl<_$DeletePurchaseImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PurchaseModel purchase) addPurchase,
    required TResult Function() getAllPurchases,
    required TResult Function(String id) deletePurchase,
  }) {
    return deletePurchase(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PurchaseModel purchase)? addPurchase,
    TResult? Function()? getAllPurchases,
    TResult? Function(String id)? deletePurchase,
  }) {
    return deletePurchase?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PurchaseModel purchase)? addPurchase,
    TResult Function()? getAllPurchases,
    TResult Function(String id)? deletePurchase,
    required TResult orElse(),
  }) {
    if (deletePurchase != null) {
      return deletePurchase(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPurchase value) addPurchase,
    required TResult Function(_GetAllPurchases value) getAllPurchases,
    required TResult Function(_DeletePurchase value) deletePurchase,
  }) {
    return deletePurchase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPurchase value)? addPurchase,
    TResult? Function(_GetAllPurchases value)? getAllPurchases,
    TResult? Function(_DeletePurchase value)? deletePurchase,
  }) {
    return deletePurchase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPurchase value)? addPurchase,
    TResult Function(_GetAllPurchases value)? getAllPurchases,
    TResult Function(_DeletePurchase value)? deletePurchase,
    required TResult orElse(),
  }) {
    if (deletePurchase != null) {
      return deletePurchase(this);
    }
    return orElse();
  }
}

abstract class _DeletePurchase implements PurchaseEvent {
  const factory _DeletePurchase(final String id) = _$DeletePurchaseImpl;

  String get id;

  /// Create a copy of PurchaseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletePurchaseImplCopyWith<_$DeletePurchaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PurchaseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PurchaseModel> purchases) success,
    required TResult Function(String? message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PurchaseModel> purchases)? success,
    TResult? Function(String? message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PurchaseModel> purchases)? success,
    TResult Function(String? message)? error,
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
abstract class $PurchaseStateCopyWith<$Res> {
  factory $PurchaseStateCopyWith(
    PurchaseState value,
    $Res Function(PurchaseState) then,
  ) = _$PurchaseStateCopyWithImpl<$Res, PurchaseState>;
}

/// @nodoc
class _$PurchaseStateCopyWithImpl<$Res, $Val extends PurchaseState>
    implements $PurchaseStateCopyWith<$Res> {
  _$PurchaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PurchaseState
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
    extends _$PurchaseStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PurchaseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PurchaseState.initial()';
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
    required TResult Function(List<PurchaseModel> purchases) success,
    required TResult Function(String? message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PurchaseModel> purchases)? success,
    TResult? Function(String? message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PurchaseModel> purchases)? success,
    TResult Function(String? message)? error,
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

abstract class _Initial implements PurchaseState {
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
    extends _$PurchaseStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PurchaseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'PurchaseState.loading()';
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
    required TResult Function(List<PurchaseModel> purchases) success,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PurchaseModel> purchases)? success,
    TResult? Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PurchaseModel> purchases)? success,
    TResult Function(String? message)? error,
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

abstract class _Loading implements PurchaseState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PurchaseModel> purchases});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$PurchaseStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? purchases = null}) {
    return _then(
      _$SuccessImpl(
        null == purchases
            ? _value._purchases
            : purchases // ignore: cast_nullable_to_non_nullable
                as List<PurchaseModel>,
      ),
    );
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<PurchaseModel> purchases)
    : _purchases = purchases;

  final List<PurchaseModel> _purchases;
  @override
  List<PurchaseModel> get purchases {
    if (_purchases is EqualUnmodifiableListView) return _purchases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_purchases);
  }

  @override
  String toString() {
    return 'PurchaseState.success(purchases: $purchases)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(
              other._purchases,
              _purchases,
            ));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_purchases));

  /// Create a copy of PurchaseState
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
    required TResult Function(List<PurchaseModel> purchases) success,
    required TResult Function(String? message) error,
  }) {
    return success(purchases);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PurchaseModel> purchases)? success,
    TResult? Function(String? message)? error,
  }) {
    return success?.call(purchases);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PurchaseModel> purchases)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(purchases);
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

abstract class _Success implements PurchaseState {
  const factory _Success(final List<PurchaseModel> purchases) = _$SuccessImpl;

  List<PurchaseModel> get purchases;

  /// Create a copy of PurchaseState
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
  $Res call({String? message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$PurchaseStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _$ErrorImpl(
        freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String?,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'PurchaseState.error(message: $message)';
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

  /// Create a copy of PurchaseState
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
    required TResult Function(List<PurchaseModel> purchases) success,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PurchaseModel> purchases)? success,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PurchaseModel> purchases)? success,
    TResult Function(String? message)? error,
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

abstract class _Error implements PurchaseState {
  const factory _Error(final String? message) = _$ErrorImpl;

  String? get message;

  /// Create a copy of PurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
