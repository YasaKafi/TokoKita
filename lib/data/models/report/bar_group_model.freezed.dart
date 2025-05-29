// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bar_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BarGroupModel {
  String get label => throw _privateConstructorUsedError;
  int get grossProfit => throw _privateConstructorUsedError;

  /// Create a copy of BarGroupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BarGroupModelCopyWith<BarGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarGroupModelCopyWith<$Res> {
  factory $BarGroupModelCopyWith(
    BarGroupModel value,
    $Res Function(BarGroupModel) then,
  ) = _$BarGroupModelCopyWithImpl<$Res, BarGroupModel>;
  @useResult
  $Res call({String label, int grossProfit});
}

/// @nodoc
class _$BarGroupModelCopyWithImpl<$Res, $Val extends BarGroupModel>
    implements $BarGroupModelCopyWith<$Res> {
  _$BarGroupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BarGroupModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? label = null, Object? grossProfit = null}) {
    return _then(
      _value.copyWith(
            label:
                null == label
                    ? _value.label
                    : label // ignore: cast_nullable_to_non_nullable
                        as String,
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
abstract class _$$BarGroupModelImplCopyWith<$Res>
    implements $BarGroupModelCopyWith<$Res> {
  factory _$$BarGroupModelImplCopyWith(
    _$BarGroupModelImpl value,
    $Res Function(_$BarGroupModelImpl) then,
  ) = __$$BarGroupModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, int grossProfit});
}

/// @nodoc
class __$$BarGroupModelImplCopyWithImpl<$Res>
    extends _$BarGroupModelCopyWithImpl<$Res, _$BarGroupModelImpl>
    implements _$$BarGroupModelImplCopyWith<$Res> {
  __$$BarGroupModelImplCopyWithImpl(
    _$BarGroupModelImpl _value,
    $Res Function(_$BarGroupModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BarGroupModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? label = null, Object? grossProfit = null}) {
    return _then(
      _$BarGroupModelImpl(
        label:
            null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as String,
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

class _$BarGroupModelImpl implements _BarGroupModel {
  const _$BarGroupModelImpl({required this.label, required this.grossProfit});

  @override
  final String label;
  @override
  final int grossProfit;

  @override
  String toString() {
    return 'BarGroupModel(label: $label, grossProfit: $grossProfit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarGroupModelImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.grossProfit, grossProfit) ||
                other.grossProfit == grossProfit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, grossProfit);

  /// Create a copy of BarGroupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BarGroupModelImplCopyWith<_$BarGroupModelImpl> get copyWith =>
      __$$BarGroupModelImplCopyWithImpl<_$BarGroupModelImpl>(this, _$identity);
}

abstract class _BarGroupModel implements BarGroupModel {
  const factory _BarGroupModel({
    required final String label,
    required final int grossProfit,
  }) = _$BarGroupModelImpl;

  @override
  String get label;
  @override
  int get grossProfit;

  /// Create a copy of BarGroupModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BarGroupModelImplCopyWith<_$BarGroupModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
