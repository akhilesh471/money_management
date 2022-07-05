// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel model) addTransaction,
    required TResult Function() seperateTransaction,
    required TResult Function(int id) deleteTransaction,
    required TResult Function(TransactionModel model, int id) updateTransaction,
    required TResult Function(int index) filteredTransaction,
    required TResult Function(String text) SearchInTransaction,
    required TResult Function(DateTimeRange text) dateByRangeTransaction,
    required TResult Function() resetdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function()? seperateTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function(TransactionModel model, int id)? updateTransaction,
    TResult Function(int index)? filteredTransaction,
    TResult Function(String text)? SearchInTransaction,
    TResult Function(DateTimeRange text)? dateByRangeTransaction,
    TResult Function()? resetdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function()? seperateTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function(TransactionModel model, int id)? updateTransaction,
    TResult Function(int index)? filteredTransaction,
    TResult Function(String text)? SearchInTransaction,
    TResult Function(DateTimeRange text)? dateByRangeTransaction,
    TResult Function()? resetdata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(_SeperateTransaction value) seperateTransaction,
    required TResult Function(_DeleteTransaction value) deleteTransaction,
    required TResult Function(_UpdateTransaction value) updateTransaction,
    required TResult Function(_FilteredTransaction value) filteredTransaction,
    required TResult Function(_SearchInTransaction value) SearchInTransaction,
    required TResult Function(_DateByRangeTransaction value)
        dateByRangeTransaction,
    required TResult Function(_ResetData value) resetdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(_SeperateTransaction value)? seperateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_FilteredTransaction value)? filteredTransaction,
    TResult Function(_SearchInTransaction value)? SearchInTransaction,
    TResult Function(_DateByRangeTransaction value)? dateByRangeTransaction,
    TResult Function(_ResetData value)? resetdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(_SeperateTransaction value)? seperateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_FilteredTransaction value)? filteredTransaction,
    TResult Function(_SearchInTransaction value)? SearchInTransaction,
    TResult Function(_DateByRangeTransaction value)? dateByRangeTransaction,
    TResult Function(_ResetData value)? resetdata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  final TransactionEvent _value;
  // ignore: unused_field
  final $Res Function(TransactionEvent) _then;
}

/// @nodoc
abstract class _$$_AddTransactionCopyWith<$Res> {
  factory _$$_AddTransactionCopyWith(
          _$_AddTransaction value, $Res Function(_$_AddTransaction) then) =
      __$$_AddTransactionCopyWithImpl<$Res>;
  $Res call({TransactionModel model});
}

/// @nodoc
class __$$_AddTransactionCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$$_AddTransactionCopyWith<$Res> {
  __$$_AddTransactionCopyWithImpl(
      _$_AddTransaction _value, $Res Function(_$_AddTransaction) _then)
      : super(_value, (v) => _then(v as _$_AddTransaction));

  @override
  _$_AddTransaction get _value => super._value as _$_AddTransaction;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_AddTransaction(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
    ));
  }
}

/// @nodoc

class _$_AddTransaction implements _AddTransaction {
  const _$_AddTransaction({required this.model});

  @override
  final TransactionModel model;

  @override
  String toString() {
    return 'TransactionEvent.addTransaction(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTransaction &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$$_AddTransactionCopyWith<_$_AddTransaction> get copyWith =>
      __$$_AddTransactionCopyWithImpl<_$_AddTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel model) addTransaction,
    required TResult Function() seperateTransaction,
    required TResult Function(int id) deleteTransaction,
    required TResult Function(TransactionModel model, int id) updateTransaction,
    required TResult Function(int index) filteredTransaction,
    required TResult Function(String text) SearchInTransaction,
    required TResult Function(DateTimeRange text) dateByRangeTransaction,
    required TResult Function() resetdata,
  }) {
    return addTransaction(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function()? seperateTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function(TransactionModel model, int id)? updateTransaction,
    TResult Function(int index)? filteredTransaction,
    TResult Function(String text)? SearchInTransaction,
    TResult Function(DateTimeRange text)? dateByRangeTransaction,
    TResult Function()? resetdata,
  }) {
    return addTransaction?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function()? seperateTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function(TransactionModel model, int id)? updateTransaction,
    TResult Function(int index)? filteredTransaction,
    TResult Function(String text)? SearchInTransaction,
    TResult Function(DateTimeRange text)? dateByRangeTransaction,
    TResult Function()? resetdata,
    required TResult orElse(),
  }) {
    if (addTransaction != null) {
      return addTransaction(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(_SeperateTransaction value) seperateTransaction,
    required TResult Function(_DeleteTransaction value) deleteTransaction,
    required TResult Function(_UpdateTransaction value) updateTransaction,
    required TResult Function(_FilteredTransaction value) filteredTransaction,
    required TResult Function(_SearchInTransaction value) SearchInTransaction,
    required TResult Function(_DateByRangeTransaction value)
        dateByRangeTransaction,
    required TResult Function(_ResetData value) resetdata,
  }) {
    return addTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(_SeperateTransaction value)? seperateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_FilteredTransaction value)? filteredTransaction,
    TResult Function(_SearchInTransaction value)? SearchInTransaction,
    TResult Function(_DateByRangeTransaction value)? dateByRangeTransaction,
    TResult Function(_ResetData value)? resetdata,
  }) {
    return addTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(_SeperateTransaction value)? seperateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_FilteredTransaction value)? filteredTransaction,
    TResult Function(_SearchInTransaction value)? SearchInTransaction,
    TResult Function(_DateByRangeTransaction value)? dateByRangeTransaction,
    TResult Function(_ResetData value)? resetdata,
    required TResult orElse(),
  }) {
    if (addTransaction != null) {
      return addTransaction(this);
    }
    return orElse();
  }
}

abstract class _AddTransaction implements TransactionEvent {
  const factory _AddTransaction({required final TransactionModel model}) =
      _$_AddTransaction;

  TransactionModel get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AddTransactionCopyWith<_$_AddTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SeperateTransactionCopyWith<$Res> {
  factory _$$_SeperateTransactionCopyWith(_$_SeperateTransaction value,
          $Res Function(_$_SeperateTransaction) then) =
      __$$_SeperateTransactionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SeperateTransactionCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$$_SeperateTransactionCopyWith<$Res> {
  __$$_SeperateTransactionCopyWithImpl(_$_SeperateTransaction _value,
      $Res Function(_$_SeperateTransaction) _then)
      : super(_value, (v) => _then(v as _$_SeperateTransaction));

  @override
  _$_SeperateTransaction get _value => super._value as _$_SeperateTransaction;
}

/// @nodoc

class _$_SeperateTransaction implements _SeperateTransaction {
  const _$_SeperateTransaction();

  @override
  String toString() {
    return 'TransactionEvent.seperateTransaction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SeperateTransaction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel model) addTransaction,
    required TResult Function() seperateTransaction,
    required TResult Function(int id) deleteTransaction,
    required TResult Function(TransactionModel model, int id) updateTransaction,
    required TResult Function(int index) filteredTransaction,
    required TResult Function(String text) SearchInTransaction,
    required TResult Function(DateTimeRange text) dateByRangeTransaction,
    required TResult Function() resetdata,
  }) {
    return seperateTransaction();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function()? seperateTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function(TransactionModel model, int id)? updateTransaction,
    TResult Function(int index)? filteredTransaction,
    TResult Function(String text)? SearchInTransaction,
    TResult Function(DateTimeRange text)? dateByRangeTransaction,
    TResult Function()? resetdata,
  }) {
    return seperateTransaction?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function()? seperateTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function(TransactionModel model, int id)? updateTransaction,
    TResult Function(int index)? filteredTransaction,
    TResult Function(String text)? SearchInTransaction,
    TResult Function(DateTimeRange text)? dateByRangeTransaction,
    TResult Function()? resetdata,
    required TResult orElse(),
  }) {
    if (seperateTransaction != null) {
      return seperateTransaction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(_SeperateTransaction value) seperateTransaction,
    required TResult Function(_DeleteTransaction value) deleteTransaction,
    required TResult Function(_UpdateTransaction value) updateTransaction,
    required TResult Function(_FilteredTransaction value) filteredTransaction,
    required TResult Function(_SearchInTransaction value) SearchInTransaction,
    required TResult Function(_DateByRangeTransaction value)
        dateByRangeTransaction,
    required TResult Function(_ResetData value) resetdata,
  }) {
    return seperateTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(_SeperateTransaction value)? seperateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_FilteredTransaction value)? filteredTransaction,
    TResult Function(_SearchInTransaction value)? SearchInTransaction,
    TResult Function(_DateByRangeTransaction value)? dateByRangeTransaction,
    TResult Function(_ResetData value)? resetdata,
  }) {
    return seperateTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(_SeperateTransaction value)? seperateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_FilteredTransaction value)? filteredTransaction,
    TResult Function(_SearchInTransaction value)? SearchInTransaction,
    TResult Function(_DateByRangeTransaction value)? dateByRangeTransaction,
    TResult Function(_ResetData value)? resetdata,
    required TResult orElse(),
  }) {
    if (seperateTransaction != null) {
      return seperateTransaction(this);
    }
    return orElse();
  }
}

abstract class _SeperateTransaction implements TransactionEvent {
  const factory _SeperateTransaction() = _$_SeperateTransaction;
}

/// @nodoc
abstract class _$$_DeleteTransactionCopyWith<$Res> {
  factory _$$_DeleteTransactionCopyWith(_$_DeleteTransaction value,
          $Res Function(_$_DeleteTransaction) then) =
      __$$_DeleteTransactionCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$$_DeleteTransactionCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$$_DeleteTransactionCopyWith<$Res> {
  __$$_DeleteTransactionCopyWithImpl(
      _$_DeleteTransaction _value, $Res Function(_$_DeleteTransaction) _then)
      : super(_value, (v) => _then(v as _$_DeleteTransaction));

  @override
  _$_DeleteTransaction get _value => super._value as _$_DeleteTransaction;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_DeleteTransaction(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteTransaction implements _DeleteTransaction {
  const _$_DeleteTransaction({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'TransactionEvent.deleteTransaction(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteTransaction &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteTransactionCopyWith<_$_DeleteTransaction> get copyWith =>
      __$$_DeleteTransactionCopyWithImpl<_$_DeleteTransaction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel model) addTransaction,
    required TResult Function() seperateTransaction,
    required TResult Function(int id) deleteTransaction,
    required TResult Function(TransactionModel model, int id) updateTransaction,
    required TResult Function(int index) filteredTransaction,
    required TResult Function(String text) SearchInTransaction,
    required TResult Function(DateTimeRange text) dateByRangeTransaction,
    required TResult Function() resetdata,
  }) {
    return deleteTransaction(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function()? seperateTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function(TransactionModel model, int id)? updateTransaction,
    TResult Function(int index)? filteredTransaction,
    TResult Function(String text)? SearchInTransaction,
    TResult Function(DateTimeRange text)? dateByRangeTransaction,
    TResult Function()? resetdata,
  }) {
    return deleteTransaction?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function()? seperateTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function(TransactionModel model, int id)? updateTransaction,
    TResult Function(int index)? filteredTransaction,
    TResult Function(String text)? SearchInTransaction,
    TResult Function(DateTimeRange text)? dateByRangeTransaction,
    TResult Function()? resetdata,
    required TResult orElse(),
  }) {
    if (deleteTransaction != null) {
      return deleteTransaction(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(_SeperateTransaction value) seperateTransaction,
    required TResult Function(_DeleteTransaction value) deleteTransaction,
    required TResult Function(_UpdateTransaction value) updateTransaction,
    required TResult Function(_FilteredTransaction value) filteredTransaction,
    required TResult Function(_SearchInTransaction value) SearchInTransaction,
    required TResult Function(_DateByRangeTransaction value)
        dateByRangeTransaction,
    required TResult Function(_ResetData value) resetdata,
  }) {
    return deleteTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(_SeperateTransaction value)? seperateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_FilteredTransaction value)? filteredTransaction,
    TResult Function(_SearchInTransaction value)? SearchInTransaction,
    TResult Function(_DateByRangeTransaction value)? dateByRangeTransaction,
    TResult Function(_ResetData value)? resetdata,
  }) {
    return deleteTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(_SeperateTransaction value)? seperateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_FilteredTransaction value)? filteredTransaction,
    TResult Function(_SearchInTransaction value)? SearchInTransaction,
    TResult Function(_DateByRangeTransaction value)? dateByRangeTransaction,
    TResult Function(_ResetData value)? resetdata,
    required TResult orElse(),
  }) {
    if (deleteTransaction != null) {
      return deleteTransaction(this);
    }
    return orElse();
  }
}

abstract class _DeleteTransaction implements TransactionEvent {
  const factory _DeleteTransaction({required final int id}) =
      _$_DeleteTransaction;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_DeleteTransactionCopyWith<_$_DeleteTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateTransactionCopyWith<$Res> {
  factory _$$_UpdateTransactionCopyWith(_$_UpdateTransaction value,
          $Res Function(_$_UpdateTransaction) then) =
      __$$_UpdateTransactionCopyWithImpl<$Res>;
  $Res call({TransactionModel model, int id});
}

/// @nodoc
class __$$_UpdateTransactionCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$$_UpdateTransactionCopyWith<$Res> {
  __$$_UpdateTransactionCopyWithImpl(
      _$_UpdateTransaction _value, $Res Function(_$_UpdateTransaction) _then)
      : super(_value, (v) => _then(v as _$_UpdateTransaction));

  @override
  _$_UpdateTransaction get _value => super._value as _$_UpdateTransaction;

  @override
  $Res call({
    Object? model = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_UpdateTransaction(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UpdateTransaction implements _UpdateTransaction {
  const _$_UpdateTransaction({required this.model, required this.id});

  @override
  final TransactionModel model;
  @override
  final int id;

  @override
  String toString() {
    return 'TransactionEvent.updateTransaction(model: $model, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateTransaction &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateTransactionCopyWith<_$_UpdateTransaction> get copyWith =>
      __$$_UpdateTransactionCopyWithImpl<_$_UpdateTransaction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel model) addTransaction,
    required TResult Function() seperateTransaction,
    required TResult Function(int id) deleteTransaction,
    required TResult Function(TransactionModel model, int id) updateTransaction,
    required TResult Function(int index) filteredTransaction,
    required TResult Function(String text) SearchInTransaction,
    required TResult Function(DateTimeRange text) dateByRangeTransaction,
    required TResult Function() resetdata,
  }) {
    return updateTransaction(model, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function()? seperateTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function(TransactionModel model, int id)? updateTransaction,
    TResult Function(int index)? filteredTransaction,
    TResult Function(String text)? SearchInTransaction,
    TResult Function(DateTimeRange text)? dateByRangeTransaction,
    TResult Function()? resetdata,
  }) {
    return updateTransaction?.call(model, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function()? seperateTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function(TransactionModel model, int id)? updateTransaction,
    TResult Function(int index)? filteredTransaction,
    TResult Function(String text)? SearchInTransaction,
    TResult Function(DateTimeRange text)? dateByRangeTransaction,
    TResult Function()? resetdata,
    required TResult orElse(),
  }) {
    if (updateTransaction != null) {
      return updateTransaction(model, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(_SeperateTransaction value) seperateTransaction,
    required TResult Function(_DeleteTransaction value) deleteTransaction,
    required TResult Function(_UpdateTransaction value) updateTransaction,
    required TResult Function(_FilteredTransaction value) filteredTransaction,
    required TResult Function(_SearchInTransaction value) SearchInTransaction,
    required TResult Function(_DateByRangeTransaction value)
        dateByRangeTransaction,
    required TResult Function(_ResetData value) resetdata,
  }) {
    return updateTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(_SeperateTransaction value)? seperateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_FilteredTransaction value)? filteredTransaction,
    TResult Function(_SearchInTransaction value)? SearchInTransaction,
    TResult Function(_DateByRangeTransaction value)? dateByRangeTransaction,
    TResult Function(_ResetData value)? resetdata,
  }) {
    return updateTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(_SeperateTransaction value)? seperateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_FilteredTransaction value)? filteredTransaction,
    TResult Function(_SearchInTransaction value)? SearchInTransaction,
    TResult Function(_DateByRangeTransaction value)? dateByRangeTransaction,
    TResult Function(_ResetData value)? resetdata,
    required TResult orElse(),
  }) {
    if (updateTransaction != null) {
      return updateTransaction(this);
    }
    return orElse();
  }
}

abstract class _UpdateTransaction implements TransactionEvent {
  const factory _UpdateTransaction(
      {required final TransactionModel model,
      required final int id}) = _$_UpdateTransaction;

  TransactionModel get model => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UpdateTransactionCopyWith<_$_UpdateTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FilteredTransactionCopyWith<$Res> {
  factory _$$_FilteredTransactionCopyWith(_$_FilteredTransaction value,
          $Res Function(_$_FilteredTransaction) then) =
      __$$_FilteredTransactionCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$_FilteredTransactionCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$$_FilteredTransactionCopyWith<$Res> {
  __$$_FilteredTransactionCopyWithImpl(_$_FilteredTransaction _value,
      $Res Function(_$_FilteredTransaction) _then)
      : super(_value, (v) => _then(v as _$_FilteredTransaction));

  @override
  _$_FilteredTransaction get _value => super._value as _$_FilteredTransaction;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$_FilteredTransaction(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FilteredTransaction implements _FilteredTransaction {
  const _$_FilteredTransaction({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'TransactionEvent.filteredTransaction(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilteredTransaction &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$_FilteredTransactionCopyWith<_$_FilteredTransaction> get copyWith =>
      __$$_FilteredTransactionCopyWithImpl<_$_FilteredTransaction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel model) addTransaction,
    required TResult Function() seperateTransaction,
    required TResult Function(int id) deleteTransaction,
    required TResult Function(TransactionModel model, int id) updateTransaction,
    required TResult Function(int index) filteredTransaction,
    required TResult Function(String text) SearchInTransaction,
    required TResult Function(DateTimeRange text) dateByRangeTransaction,
    required TResult Function() resetdata,
  }) {
    return filteredTransaction(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function()? seperateTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function(TransactionModel model, int id)? updateTransaction,
    TResult Function(int index)? filteredTransaction,
    TResult Function(String text)? SearchInTransaction,
    TResult Function(DateTimeRange text)? dateByRangeTransaction,
    TResult Function()? resetdata,
  }) {
    return filteredTransaction?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function()? seperateTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function(TransactionModel model, int id)? updateTransaction,
    TResult Function(int index)? filteredTransaction,
    TResult Function(String text)? SearchInTransaction,
    TResult Function(DateTimeRange text)? dateByRangeTransaction,
    TResult Function()? resetdata,
    required TResult orElse(),
  }) {
    if (filteredTransaction != null) {
      return filteredTransaction(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(_SeperateTransaction value) seperateTransaction,
    required TResult Function(_DeleteTransaction value) deleteTransaction,
    required TResult Function(_UpdateTransaction value) updateTransaction,
    required TResult Function(_FilteredTransaction value) filteredTransaction,
    required TResult Function(_SearchInTransaction value) SearchInTransaction,
    required TResult Function(_DateByRangeTransaction value)
        dateByRangeTransaction,
    required TResult Function(_ResetData value) resetdata,
  }) {
    return filteredTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(_SeperateTransaction value)? seperateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_FilteredTransaction value)? filteredTransaction,
    TResult Function(_SearchInTransaction value)? SearchInTransaction,
    TResult Function(_DateByRangeTransaction value)? dateByRangeTransaction,
    TResult Function(_ResetData value)? resetdata,
  }) {
    return filteredTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(_SeperateTransaction value)? seperateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_FilteredTransaction value)? filteredTransaction,
    TResult Function(_SearchInTransaction value)? SearchInTransaction,
    TResult Function(_DateByRangeTransaction value)? dateByRangeTransaction,
    TResult Function(_ResetData value)? resetdata,
    required TResult orElse(),
  }) {
    if (filteredTransaction != null) {
      return filteredTransaction(this);
    }
    return orElse();
  }
}

abstract class _FilteredTransaction implements TransactionEvent {
  const factory _FilteredTransaction({required final int index}) =
      _$_FilteredTransaction;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FilteredTransactionCopyWith<_$_FilteredTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchInTransactionCopyWith<$Res> {
  factory _$$_SearchInTransactionCopyWith(_$_SearchInTransaction value,
          $Res Function(_$_SearchInTransaction) then) =
      __$$_SearchInTransactionCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class __$$_SearchInTransactionCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$$_SearchInTransactionCopyWith<$Res> {
  __$$_SearchInTransactionCopyWithImpl(_$_SearchInTransaction _value,
      $Res Function(_$_SearchInTransaction) _then)
      : super(_value, (v) => _then(v as _$_SearchInTransaction));

  @override
  _$_SearchInTransaction get _value => super._value as _$_SearchInTransaction;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$_SearchInTransaction(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchInTransaction implements _SearchInTransaction {
  const _$_SearchInTransaction({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'TransactionEvent.SearchInTransaction(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchInTransaction &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$_SearchInTransactionCopyWith<_$_SearchInTransaction> get copyWith =>
      __$$_SearchInTransactionCopyWithImpl<_$_SearchInTransaction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel model) addTransaction,
    required TResult Function() seperateTransaction,
    required TResult Function(int id) deleteTransaction,
    required TResult Function(TransactionModel model, int id) updateTransaction,
    required TResult Function(int index) filteredTransaction,
    required TResult Function(String text) SearchInTransaction,
    required TResult Function(DateTimeRange text) dateByRangeTransaction,
    required TResult Function() resetdata,
  }) {
    return SearchInTransaction(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function()? seperateTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function(TransactionModel model, int id)? updateTransaction,
    TResult Function(int index)? filteredTransaction,
    TResult Function(String text)? SearchInTransaction,
    TResult Function(DateTimeRange text)? dateByRangeTransaction,
    TResult Function()? resetdata,
  }) {
    return SearchInTransaction?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function()? seperateTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function(TransactionModel model, int id)? updateTransaction,
    TResult Function(int index)? filteredTransaction,
    TResult Function(String text)? SearchInTransaction,
    TResult Function(DateTimeRange text)? dateByRangeTransaction,
    TResult Function()? resetdata,
    required TResult orElse(),
  }) {
    if (SearchInTransaction != null) {
      return SearchInTransaction(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(_SeperateTransaction value) seperateTransaction,
    required TResult Function(_DeleteTransaction value) deleteTransaction,
    required TResult Function(_UpdateTransaction value) updateTransaction,
    required TResult Function(_FilteredTransaction value) filteredTransaction,
    required TResult Function(_SearchInTransaction value) SearchInTransaction,
    required TResult Function(_DateByRangeTransaction value)
        dateByRangeTransaction,
    required TResult Function(_ResetData value) resetdata,
  }) {
    return SearchInTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(_SeperateTransaction value)? seperateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_FilteredTransaction value)? filteredTransaction,
    TResult Function(_SearchInTransaction value)? SearchInTransaction,
    TResult Function(_DateByRangeTransaction value)? dateByRangeTransaction,
    TResult Function(_ResetData value)? resetdata,
  }) {
    return SearchInTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(_SeperateTransaction value)? seperateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_FilteredTransaction value)? filteredTransaction,
    TResult Function(_SearchInTransaction value)? SearchInTransaction,
    TResult Function(_DateByRangeTransaction value)? dateByRangeTransaction,
    TResult Function(_ResetData value)? resetdata,
    required TResult orElse(),
  }) {
    if (SearchInTransaction != null) {
      return SearchInTransaction(this);
    }
    return orElse();
  }
}

abstract class _SearchInTransaction implements TransactionEvent {
  const factory _SearchInTransaction({required final String text}) =
      _$_SearchInTransaction;

  String get text => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SearchInTransactionCopyWith<_$_SearchInTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DateByRangeTransactionCopyWith<$Res> {
  factory _$$_DateByRangeTransactionCopyWith(_$_DateByRangeTransaction value,
          $Res Function(_$_DateByRangeTransaction) then) =
      __$$_DateByRangeTransactionCopyWithImpl<$Res>;
  $Res call({DateTimeRange text});
}

/// @nodoc
class __$$_DateByRangeTransactionCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$$_DateByRangeTransactionCopyWith<$Res> {
  __$$_DateByRangeTransactionCopyWithImpl(_$_DateByRangeTransaction _value,
      $Res Function(_$_DateByRangeTransaction) _then)
      : super(_value, (v) => _then(v as _$_DateByRangeTransaction));

  @override
  _$_DateByRangeTransaction get _value =>
      super._value as _$_DateByRangeTransaction;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$_DateByRangeTransaction(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as DateTimeRange,
    ));
  }
}

/// @nodoc

class _$_DateByRangeTransaction implements _DateByRangeTransaction {
  const _$_DateByRangeTransaction({required this.text});

  @override
  final DateTimeRange text;

  @override
  String toString() {
    return 'TransactionEvent.dateByRangeTransaction(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateByRangeTransaction &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$_DateByRangeTransactionCopyWith<_$_DateByRangeTransaction> get copyWith =>
      __$$_DateByRangeTransactionCopyWithImpl<_$_DateByRangeTransaction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel model) addTransaction,
    required TResult Function() seperateTransaction,
    required TResult Function(int id) deleteTransaction,
    required TResult Function(TransactionModel model, int id) updateTransaction,
    required TResult Function(int index) filteredTransaction,
    required TResult Function(String text) SearchInTransaction,
    required TResult Function(DateTimeRange text) dateByRangeTransaction,
    required TResult Function() resetdata,
  }) {
    return dateByRangeTransaction(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function()? seperateTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function(TransactionModel model, int id)? updateTransaction,
    TResult Function(int index)? filteredTransaction,
    TResult Function(String text)? SearchInTransaction,
    TResult Function(DateTimeRange text)? dateByRangeTransaction,
    TResult Function()? resetdata,
  }) {
    return dateByRangeTransaction?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function()? seperateTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function(TransactionModel model, int id)? updateTransaction,
    TResult Function(int index)? filteredTransaction,
    TResult Function(String text)? SearchInTransaction,
    TResult Function(DateTimeRange text)? dateByRangeTransaction,
    TResult Function()? resetdata,
    required TResult orElse(),
  }) {
    if (dateByRangeTransaction != null) {
      return dateByRangeTransaction(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(_SeperateTransaction value) seperateTransaction,
    required TResult Function(_DeleteTransaction value) deleteTransaction,
    required TResult Function(_UpdateTransaction value) updateTransaction,
    required TResult Function(_FilteredTransaction value) filteredTransaction,
    required TResult Function(_SearchInTransaction value) SearchInTransaction,
    required TResult Function(_DateByRangeTransaction value)
        dateByRangeTransaction,
    required TResult Function(_ResetData value) resetdata,
  }) {
    return dateByRangeTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(_SeperateTransaction value)? seperateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_FilteredTransaction value)? filteredTransaction,
    TResult Function(_SearchInTransaction value)? SearchInTransaction,
    TResult Function(_DateByRangeTransaction value)? dateByRangeTransaction,
    TResult Function(_ResetData value)? resetdata,
  }) {
    return dateByRangeTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(_SeperateTransaction value)? seperateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_FilteredTransaction value)? filteredTransaction,
    TResult Function(_SearchInTransaction value)? SearchInTransaction,
    TResult Function(_DateByRangeTransaction value)? dateByRangeTransaction,
    TResult Function(_ResetData value)? resetdata,
    required TResult orElse(),
  }) {
    if (dateByRangeTransaction != null) {
      return dateByRangeTransaction(this);
    }
    return orElse();
  }
}

abstract class _DateByRangeTransaction implements TransactionEvent {
  const factory _DateByRangeTransaction({required final DateTimeRange text}) =
      _$_DateByRangeTransaction;

  DateTimeRange get text => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_DateByRangeTransactionCopyWith<_$_DateByRangeTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetDataCopyWith<$Res> {
  factory _$$_ResetDataCopyWith(
          _$_ResetData value, $Res Function(_$_ResetData) then) =
      __$$_ResetDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetDataCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements _$$_ResetDataCopyWith<$Res> {
  __$$_ResetDataCopyWithImpl(
      _$_ResetData _value, $Res Function(_$_ResetData) _then)
      : super(_value, (v) => _then(v as _$_ResetData));

  @override
  _$_ResetData get _value => super._value as _$_ResetData;
}

/// @nodoc

class _$_ResetData implements _ResetData {
  const _$_ResetData();

  @override
  String toString() {
    return 'TransactionEvent.resetdata()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel model) addTransaction,
    required TResult Function() seperateTransaction,
    required TResult Function(int id) deleteTransaction,
    required TResult Function(TransactionModel model, int id) updateTransaction,
    required TResult Function(int index) filteredTransaction,
    required TResult Function(String text) SearchInTransaction,
    required TResult Function(DateTimeRange text) dateByRangeTransaction,
    required TResult Function() resetdata,
  }) {
    return resetdata();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function()? seperateTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function(TransactionModel model, int id)? updateTransaction,
    TResult Function(int index)? filteredTransaction,
    TResult Function(String text)? SearchInTransaction,
    TResult Function(DateTimeRange text)? dateByRangeTransaction,
    TResult Function()? resetdata,
  }) {
    return resetdata?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function()? seperateTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function(TransactionModel model, int id)? updateTransaction,
    TResult Function(int index)? filteredTransaction,
    TResult Function(String text)? SearchInTransaction,
    TResult Function(DateTimeRange text)? dateByRangeTransaction,
    TResult Function()? resetdata,
    required TResult orElse(),
  }) {
    if (resetdata != null) {
      return resetdata();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(_SeperateTransaction value) seperateTransaction,
    required TResult Function(_DeleteTransaction value) deleteTransaction,
    required TResult Function(_UpdateTransaction value) updateTransaction,
    required TResult Function(_FilteredTransaction value) filteredTransaction,
    required TResult Function(_SearchInTransaction value) SearchInTransaction,
    required TResult Function(_DateByRangeTransaction value)
        dateByRangeTransaction,
    required TResult Function(_ResetData value) resetdata,
  }) {
    return resetdata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(_SeperateTransaction value)? seperateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_FilteredTransaction value)? filteredTransaction,
    TResult Function(_SearchInTransaction value)? SearchInTransaction,
    TResult Function(_DateByRangeTransaction value)? dateByRangeTransaction,
    TResult Function(_ResetData value)? resetdata,
  }) {
    return resetdata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(_SeperateTransaction value)? seperateTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    TResult Function(_FilteredTransaction value)? filteredTransaction,
    TResult Function(_SearchInTransaction value)? SearchInTransaction,
    TResult Function(_DateByRangeTransaction value)? dateByRangeTransaction,
    TResult Function(_ResetData value)? resetdata,
    required TResult orElse(),
  }) {
    if (resetdata != null) {
      return resetdata(this);
    }
    return orElse();
  }
}

abstract class _ResetData implements TransactionEvent {
  const factory _ResetData() = _$_ResetData;
}

/// @nodoc
mixin _$TransactionState {
  List<TransactionModel> get incomeTransactionList =>
      throw _privateConstructorUsedError;
  List<TransactionModel> get expenseTransactionList =>
      throw _privateConstructorUsedError;
  List<TransactionModel> get alltransaction =>
      throw _privateConstructorUsedError;
  List<TransactionModel> get filtertransaction =>
      throw _privateConstructorUsedError;
  List<TransactionModel> get filteredIncometransaction =>
      throw _privateConstructorUsedError;
  List<TransactionModel> get filteredExpensetransaction =>
      throw _privateConstructorUsedError;
  double get totalamount => throw _privateConstructorUsedError;
  double get incomeamount => throw _privateConstructorUsedError;
  double get expenseamount => throw _privateConstructorUsedError;
  bool get showfilterlist => throw _privateConstructorUsedError;
  DateTimeRange get daterange => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionStateCopyWith<TransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res>;
  $Res call(
      {List<TransactionModel> incomeTransactionList,
      List<TransactionModel> expenseTransactionList,
      List<TransactionModel> alltransaction,
      List<TransactionModel> filtertransaction,
      List<TransactionModel> filteredIncometransaction,
      List<TransactionModel> filteredExpensetransaction,
      double totalamount,
      double incomeamount,
      double expenseamount,
      bool showfilterlist,
      DateTimeRange daterange});
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  final TransactionState _value;
  // ignore: unused_field
  final $Res Function(TransactionState) _then;

  @override
  $Res call({
    Object? incomeTransactionList = freezed,
    Object? expenseTransactionList = freezed,
    Object? alltransaction = freezed,
    Object? filtertransaction = freezed,
    Object? filteredIncometransaction = freezed,
    Object? filteredExpensetransaction = freezed,
    Object? totalamount = freezed,
    Object? incomeamount = freezed,
    Object? expenseamount = freezed,
    Object? showfilterlist = freezed,
    Object? daterange = freezed,
  }) {
    return _then(_value.copyWith(
      incomeTransactionList: incomeTransactionList == freezed
          ? _value.incomeTransactionList
          : incomeTransactionList // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      expenseTransactionList: expenseTransactionList == freezed
          ? _value.expenseTransactionList
          : expenseTransactionList // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      alltransaction: alltransaction == freezed
          ? _value.alltransaction
          : alltransaction // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      filtertransaction: filtertransaction == freezed
          ? _value.filtertransaction
          : filtertransaction // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      filteredIncometransaction: filteredIncometransaction == freezed
          ? _value.filteredIncometransaction
          : filteredIncometransaction // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      filteredExpensetransaction: filteredExpensetransaction == freezed
          ? _value.filteredExpensetransaction
          : filteredExpensetransaction // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      totalamount: totalamount == freezed
          ? _value.totalamount
          : totalamount // ignore: cast_nullable_to_non_nullable
              as double,
      incomeamount: incomeamount == freezed
          ? _value.incomeamount
          : incomeamount // ignore: cast_nullable_to_non_nullable
              as double,
      expenseamount: expenseamount == freezed
          ? _value.expenseamount
          : expenseamount // ignore: cast_nullable_to_non_nullable
              as double,
      showfilterlist: showfilterlist == freezed
          ? _value.showfilterlist
          : showfilterlist // ignore: cast_nullable_to_non_nullable
              as bool,
      daterange: daterange == freezed
          ? _value.daterange
          : daterange // ignore: cast_nullable_to_non_nullable
              as DateTimeRange,
    ));
  }
}

/// @nodoc
abstract class _$$_TransactionStateCopyWith<$Res>
    implements $TransactionStateCopyWith<$Res> {
  factory _$$_TransactionStateCopyWith(
          _$_TransactionState value, $Res Function(_$_TransactionState) then) =
      __$$_TransactionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<TransactionModel> incomeTransactionList,
      List<TransactionModel> expenseTransactionList,
      List<TransactionModel> alltransaction,
      List<TransactionModel> filtertransaction,
      List<TransactionModel> filteredIncometransaction,
      List<TransactionModel> filteredExpensetransaction,
      double totalamount,
      double incomeamount,
      double expenseamount,
      bool showfilterlist,
      DateTimeRange daterange});
}

/// @nodoc
class __$$_TransactionStateCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$$_TransactionStateCopyWith<$Res> {
  __$$_TransactionStateCopyWithImpl(
      _$_TransactionState _value, $Res Function(_$_TransactionState) _then)
      : super(_value, (v) => _then(v as _$_TransactionState));

  @override
  _$_TransactionState get _value => super._value as _$_TransactionState;

  @override
  $Res call({
    Object? incomeTransactionList = freezed,
    Object? expenseTransactionList = freezed,
    Object? alltransaction = freezed,
    Object? filtertransaction = freezed,
    Object? filteredIncometransaction = freezed,
    Object? filteredExpensetransaction = freezed,
    Object? totalamount = freezed,
    Object? incomeamount = freezed,
    Object? expenseamount = freezed,
    Object? showfilterlist = freezed,
    Object? daterange = freezed,
  }) {
    return _then(_$_TransactionState(
      incomeTransactionList: incomeTransactionList == freezed
          ? _value._incomeTransactionList
          : incomeTransactionList // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      expenseTransactionList: expenseTransactionList == freezed
          ? _value._expenseTransactionList
          : expenseTransactionList // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      alltransaction: alltransaction == freezed
          ? _value._alltransaction
          : alltransaction // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      filtertransaction: filtertransaction == freezed
          ? _value._filtertransaction
          : filtertransaction // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      filteredIncometransaction: filteredIncometransaction == freezed
          ? _value._filteredIncometransaction
          : filteredIncometransaction // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      filteredExpensetransaction: filteredExpensetransaction == freezed
          ? _value._filteredExpensetransaction
          : filteredExpensetransaction // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      totalamount: totalamount == freezed
          ? _value.totalamount
          : totalamount // ignore: cast_nullable_to_non_nullable
              as double,
      incomeamount: incomeamount == freezed
          ? _value.incomeamount
          : incomeamount // ignore: cast_nullable_to_non_nullable
              as double,
      expenseamount: expenseamount == freezed
          ? _value.expenseamount
          : expenseamount // ignore: cast_nullable_to_non_nullable
              as double,
      showfilterlist: showfilterlist == freezed
          ? _value.showfilterlist
          : showfilterlist // ignore: cast_nullable_to_non_nullable
              as bool,
      daterange: daterange == freezed
          ? _value.daterange
          : daterange // ignore: cast_nullable_to_non_nullable
              as DateTimeRange,
    ));
  }
}

/// @nodoc

class _$_TransactionState implements _TransactionState {
  const _$_TransactionState(
      {required final List<TransactionModel> incomeTransactionList,
      required final List<TransactionModel> expenseTransactionList,
      required final List<TransactionModel> alltransaction,
      required final List<TransactionModel> filtertransaction,
      required final List<TransactionModel> filteredIncometransaction,
      required final List<TransactionModel> filteredExpensetransaction,
      required this.totalamount,
      required this.incomeamount,
      required this.expenseamount,
      required this.showfilterlist,
      required this.daterange})
      : _incomeTransactionList = incomeTransactionList,
        _expenseTransactionList = expenseTransactionList,
        _alltransaction = alltransaction,
        _filtertransaction = filtertransaction,
        _filteredIncometransaction = filteredIncometransaction,
        _filteredExpensetransaction = filteredExpensetransaction;

  final List<TransactionModel> _incomeTransactionList;
  @override
  List<TransactionModel> get incomeTransactionList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incomeTransactionList);
  }

  final List<TransactionModel> _expenseTransactionList;
  @override
  List<TransactionModel> get expenseTransactionList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenseTransactionList);
  }

  final List<TransactionModel> _alltransaction;
  @override
  List<TransactionModel> get alltransaction {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alltransaction);
  }

  final List<TransactionModel> _filtertransaction;
  @override
  List<TransactionModel> get filtertransaction {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filtertransaction);
  }

  final List<TransactionModel> _filteredIncometransaction;
  @override
  List<TransactionModel> get filteredIncometransaction {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredIncometransaction);
  }

  final List<TransactionModel> _filteredExpensetransaction;
  @override
  List<TransactionModel> get filteredExpensetransaction {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredExpensetransaction);
  }

  @override
  final double totalamount;
  @override
  final double incomeamount;
  @override
  final double expenseamount;
  @override
  final bool showfilterlist;
  @override
  final DateTimeRange daterange;

  @override
  String toString() {
    return 'TransactionState(incomeTransactionList: $incomeTransactionList, expenseTransactionList: $expenseTransactionList, alltransaction: $alltransaction, filtertransaction: $filtertransaction, filteredIncometransaction: $filteredIncometransaction, filteredExpensetransaction: $filteredExpensetransaction, totalamount: $totalamount, incomeamount: $incomeamount, expenseamount: $expenseamount, showfilterlist: $showfilterlist, daterange: $daterange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionState &&
            const DeepCollectionEquality()
                .equals(other._incomeTransactionList, _incomeTransactionList) &&
            const DeepCollectionEquality().equals(
                other._expenseTransactionList, _expenseTransactionList) &&
            const DeepCollectionEquality()
                .equals(other._alltransaction, _alltransaction) &&
            const DeepCollectionEquality()
                .equals(other._filtertransaction, _filtertransaction) &&
            const DeepCollectionEquality().equals(
                other._filteredIncometransaction, _filteredIncometransaction) &&
            const DeepCollectionEquality().equals(
                other._filteredExpensetransaction,
                _filteredExpensetransaction) &&
            const DeepCollectionEquality()
                .equals(other.totalamount, totalamount) &&
            const DeepCollectionEquality()
                .equals(other.incomeamount, incomeamount) &&
            const DeepCollectionEquality()
                .equals(other.expenseamount, expenseamount) &&
            const DeepCollectionEquality()
                .equals(other.showfilterlist, showfilterlist) &&
            const DeepCollectionEquality().equals(other.daterange, daterange));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_incomeTransactionList),
      const DeepCollectionEquality().hash(_expenseTransactionList),
      const DeepCollectionEquality().hash(_alltransaction),
      const DeepCollectionEquality().hash(_filtertransaction),
      const DeepCollectionEquality().hash(_filteredIncometransaction),
      const DeepCollectionEquality().hash(_filteredExpensetransaction),
      const DeepCollectionEquality().hash(totalamount),
      const DeepCollectionEquality().hash(incomeamount),
      const DeepCollectionEquality().hash(expenseamount),
      const DeepCollectionEquality().hash(showfilterlist),
      const DeepCollectionEquality().hash(daterange));

  @JsonKey(ignore: true)
  @override
  _$$_TransactionStateCopyWith<_$_TransactionState> get copyWith =>
      __$$_TransactionStateCopyWithImpl<_$_TransactionState>(this, _$identity);
}

abstract class _TransactionState implements TransactionState {
  const factory _TransactionState(
      {required final List<TransactionModel> incomeTransactionList,
      required final List<TransactionModel> expenseTransactionList,
      required final List<TransactionModel> alltransaction,
      required final List<TransactionModel> filtertransaction,
      required final List<TransactionModel> filteredIncometransaction,
      required final List<TransactionModel> filteredExpensetransaction,
      required final double totalamount,
      required final double incomeamount,
      required final double expenseamount,
      required final bool showfilterlist,
      required final DateTimeRange daterange}) = _$_TransactionState;

  @override
  List<TransactionModel> get incomeTransactionList =>
      throw _privateConstructorUsedError;
  @override
  List<TransactionModel> get expenseTransactionList =>
      throw _privateConstructorUsedError;
  @override
  List<TransactionModel> get alltransaction =>
      throw _privateConstructorUsedError;
  @override
  List<TransactionModel> get filtertransaction =>
      throw _privateConstructorUsedError;
  @override
  List<TransactionModel> get filteredIncometransaction =>
      throw _privateConstructorUsedError;
  @override
  List<TransactionModel> get filteredExpensetransaction =>
      throw _privateConstructorUsedError;
  @override
  double get totalamount => throw _privateConstructorUsedError;
  @override
  double get incomeamount => throw _privateConstructorUsedError;
  @override
  double get expenseamount => throw _privateConstructorUsedError;
  @override
  bool get showfilterlist => throw _privateConstructorUsedError;
  @override
  DateTimeRange get daterange => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionStateCopyWith<_$_TransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}
