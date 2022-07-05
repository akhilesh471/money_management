// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryModel model) addCategoryEvent,
    required TResult Function() seperateCategoryEvent,
    required TResult Function(String index) deleteCategoryEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CategoryModel model)? addCategoryEvent,
    TResult Function()? seperateCategoryEvent,
    TResult Function(String index)? deleteCategoryEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryModel model)? addCategoryEvent,
    TResult Function()? seperateCategoryEvent,
    TResult Function(String index)? deleteCategoryEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCategorydetailsEvent value) addCategoryEvent,
    required TResult Function(_SeperateCategoryEvent value)
        seperateCategoryEvent,
    required TResult Function(_DeleteCategoryEvent value) deleteCategoryEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddCategorydetailsEvent value)? addCategoryEvent,
    TResult Function(_SeperateCategoryEvent value)? seperateCategoryEvent,
    TResult Function(_DeleteCategoryEvent value)? deleteCategoryEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCategorydetailsEvent value)? addCategoryEvent,
    TResult Function(_SeperateCategoryEvent value)? seperateCategoryEvent,
    TResult Function(_DeleteCategoryEvent value)? deleteCategoryEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  final CategoryEvent _value;
  // ignore: unused_field
  final $Res Function(CategoryEvent) _then;
}

/// @nodoc
abstract class _$$_AddCategorydetailsEventCopyWith<$Res> {
  factory _$$_AddCategorydetailsEventCopyWith(_$_AddCategorydetailsEvent value,
          $Res Function(_$_AddCategorydetailsEvent) then) =
      __$$_AddCategorydetailsEventCopyWithImpl<$Res>;
  $Res call({CategoryModel model});
}

/// @nodoc
class __$$_AddCategorydetailsEventCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res>
    implements _$$_AddCategorydetailsEventCopyWith<$Res> {
  __$$_AddCategorydetailsEventCopyWithImpl(_$_AddCategorydetailsEvent _value,
      $Res Function(_$_AddCategorydetailsEvent) _then)
      : super(_value, (v) => _then(v as _$_AddCategorydetailsEvent));

  @override
  _$_AddCategorydetailsEvent get _value =>
      super._value as _$_AddCategorydetailsEvent;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_AddCategorydetailsEvent(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
    ));
  }
}

/// @nodoc

class _$_AddCategorydetailsEvent implements _AddCategorydetailsEvent {
  const _$_AddCategorydetailsEvent({required this.model});

  @override
  final CategoryModel model;

  @override
  String toString() {
    return 'CategoryEvent.addCategoryEvent(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCategorydetailsEvent &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$$_AddCategorydetailsEventCopyWith<_$_AddCategorydetailsEvent>
      get copyWith =>
          __$$_AddCategorydetailsEventCopyWithImpl<_$_AddCategorydetailsEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryModel model) addCategoryEvent,
    required TResult Function() seperateCategoryEvent,
    required TResult Function(String index) deleteCategoryEvent,
  }) {
    return addCategoryEvent(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CategoryModel model)? addCategoryEvent,
    TResult Function()? seperateCategoryEvent,
    TResult Function(String index)? deleteCategoryEvent,
  }) {
    return addCategoryEvent?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryModel model)? addCategoryEvent,
    TResult Function()? seperateCategoryEvent,
    TResult Function(String index)? deleteCategoryEvent,
    required TResult orElse(),
  }) {
    if (addCategoryEvent != null) {
      return addCategoryEvent(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCategorydetailsEvent value) addCategoryEvent,
    required TResult Function(_SeperateCategoryEvent value)
        seperateCategoryEvent,
    required TResult Function(_DeleteCategoryEvent value) deleteCategoryEvent,
  }) {
    return addCategoryEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddCategorydetailsEvent value)? addCategoryEvent,
    TResult Function(_SeperateCategoryEvent value)? seperateCategoryEvent,
    TResult Function(_DeleteCategoryEvent value)? deleteCategoryEvent,
  }) {
    return addCategoryEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCategorydetailsEvent value)? addCategoryEvent,
    TResult Function(_SeperateCategoryEvent value)? seperateCategoryEvent,
    TResult Function(_DeleteCategoryEvent value)? deleteCategoryEvent,
    required TResult orElse(),
  }) {
    if (addCategoryEvent != null) {
      return addCategoryEvent(this);
    }
    return orElse();
  }
}

abstract class _AddCategorydetailsEvent implements CategoryEvent {
  const factory _AddCategorydetailsEvent({required final CategoryModel model}) =
      _$_AddCategorydetailsEvent;

  CategoryModel get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AddCategorydetailsEventCopyWith<_$_AddCategorydetailsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SeperateCategoryEventCopyWith<$Res> {
  factory _$$_SeperateCategoryEventCopyWith(_$_SeperateCategoryEvent value,
          $Res Function(_$_SeperateCategoryEvent) then) =
      __$$_SeperateCategoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SeperateCategoryEventCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res>
    implements _$$_SeperateCategoryEventCopyWith<$Res> {
  __$$_SeperateCategoryEventCopyWithImpl(_$_SeperateCategoryEvent _value,
      $Res Function(_$_SeperateCategoryEvent) _then)
      : super(_value, (v) => _then(v as _$_SeperateCategoryEvent));

  @override
  _$_SeperateCategoryEvent get _value =>
      super._value as _$_SeperateCategoryEvent;
}

/// @nodoc

class _$_SeperateCategoryEvent implements _SeperateCategoryEvent {
  const _$_SeperateCategoryEvent();

  @override
  String toString() {
    return 'CategoryEvent.seperateCategoryEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SeperateCategoryEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryModel model) addCategoryEvent,
    required TResult Function() seperateCategoryEvent,
    required TResult Function(String index) deleteCategoryEvent,
  }) {
    return seperateCategoryEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CategoryModel model)? addCategoryEvent,
    TResult Function()? seperateCategoryEvent,
    TResult Function(String index)? deleteCategoryEvent,
  }) {
    return seperateCategoryEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryModel model)? addCategoryEvent,
    TResult Function()? seperateCategoryEvent,
    TResult Function(String index)? deleteCategoryEvent,
    required TResult orElse(),
  }) {
    if (seperateCategoryEvent != null) {
      return seperateCategoryEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCategorydetailsEvent value) addCategoryEvent,
    required TResult Function(_SeperateCategoryEvent value)
        seperateCategoryEvent,
    required TResult Function(_DeleteCategoryEvent value) deleteCategoryEvent,
  }) {
    return seperateCategoryEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddCategorydetailsEvent value)? addCategoryEvent,
    TResult Function(_SeperateCategoryEvent value)? seperateCategoryEvent,
    TResult Function(_DeleteCategoryEvent value)? deleteCategoryEvent,
  }) {
    return seperateCategoryEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCategorydetailsEvent value)? addCategoryEvent,
    TResult Function(_SeperateCategoryEvent value)? seperateCategoryEvent,
    TResult Function(_DeleteCategoryEvent value)? deleteCategoryEvent,
    required TResult orElse(),
  }) {
    if (seperateCategoryEvent != null) {
      return seperateCategoryEvent(this);
    }
    return orElse();
  }
}

abstract class _SeperateCategoryEvent implements CategoryEvent {
  const factory _SeperateCategoryEvent() = _$_SeperateCategoryEvent;
}

/// @nodoc
abstract class _$$_DeleteCategoryEventCopyWith<$Res> {
  factory _$$_DeleteCategoryEventCopyWith(_$_DeleteCategoryEvent value,
          $Res Function(_$_DeleteCategoryEvent) then) =
      __$$_DeleteCategoryEventCopyWithImpl<$Res>;
  $Res call({String index});
}

/// @nodoc
class __$$_DeleteCategoryEventCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res>
    implements _$$_DeleteCategoryEventCopyWith<$Res> {
  __$$_DeleteCategoryEventCopyWithImpl(_$_DeleteCategoryEvent _value,
      $Res Function(_$_DeleteCategoryEvent) _then)
      : super(_value, (v) => _then(v as _$_DeleteCategoryEvent));

  @override
  _$_DeleteCategoryEvent get _value => super._value as _$_DeleteCategoryEvent;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$_DeleteCategoryEvent(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteCategoryEvent implements _DeleteCategoryEvent {
  const _$_DeleteCategoryEvent({required this.index});

  @override
  final String index;

  @override
  String toString() {
    return 'CategoryEvent.deleteCategoryEvent(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteCategoryEvent &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteCategoryEventCopyWith<_$_DeleteCategoryEvent> get copyWith =>
      __$$_DeleteCategoryEventCopyWithImpl<_$_DeleteCategoryEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryModel model) addCategoryEvent,
    required TResult Function() seperateCategoryEvent,
    required TResult Function(String index) deleteCategoryEvent,
  }) {
    return deleteCategoryEvent(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CategoryModel model)? addCategoryEvent,
    TResult Function()? seperateCategoryEvent,
    TResult Function(String index)? deleteCategoryEvent,
  }) {
    return deleteCategoryEvent?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryModel model)? addCategoryEvent,
    TResult Function()? seperateCategoryEvent,
    TResult Function(String index)? deleteCategoryEvent,
    required TResult orElse(),
  }) {
    if (deleteCategoryEvent != null) {
      return deleteCategoryEvent(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCategorydetailsEvent value) addCategoryEvent,
    required TResult Function(_SeperateCategoryEvent value)
        seperateCategoryEvent,
    required TResult Function(_DeleteCategoryEvent value) deleteCategoryEvent,
  }) {
    return deleteCategoryEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddCategorydetailsEvent value)? addCategoryEvent,
    TResult Function(_SeperateCategoryEvent value)? seperateCategoryEvent,
    TResult Function(_DeleteCategoryEvent value)? deleteCategoryEvent,
  }) {
    return deleteCategoryEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCategorydetailsEvent value)? addCategoryEvent,
    TResult Function(_SeperateCategoryEvent value)? seperateCategoryEvent,
    TResult Function(_DeleteCategoryEvent value)? deleteCategoryEvent,
    required TResult orElse(),
  }) {
    if (deleteCategoryEvent != null) {
      return deleteCategoryEvent(this);
    }
    return orElse();
  }
}

abstract class _DeleteCategoryEvent implements CategoryEvent {
  const factory _DeleteCategoryEvent({required final String index}) =
      _$_DeleteCategoryEvent;

  String get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_DeleteCategoryEventCopyWith<_$_DeleteCategoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryState {
  List<CategoryModel> get categoryIncomeList =>
      throw _privateConstructorUsedError;
  List<CategoryModel> get categoryExpenseList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res>;
  $Res call(
      {List<CategoryModel> categoryIncomeList,
      List<CategoryModel> categoryExpenseList});
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  final CategoryState _value;
  // ignore: unused_field
  final $Res Function(CategoryState) _then;

  @override
  $Res call({
    Object? categoryIncomeList = freezed,
    Object? categoryExpenseList = freezed,
  }) {
    return _then(_value.copyWith(
      categoryIncomeList: categoryIncomeList == freezed
          ? _value.categoryIncomeList
          : categoryIncomeList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      categoryExpenseList: categoryExpenseList == freezed
          ? _value.categoryExpenseList
          : categoryExpenseList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_CategoryStateCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$_CategoryStateCopyWith(
          _$_CategoryState value, $Res Function(_$_CategoryState) then) =
      __$$_CategoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CategoryModel> categoryIncomeList,
      List<CategoryModel> categoryExpenseList});
}

/// @nodoc
class __$$_CategoryStateCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$$_CategoryStateCopyWith<$Res> {
  __$$_CategoryStateCopyWithImpl(
      _$_CategoryState _value, $Res Function(_$_CategoryState) _then)
      : super(_value, (v) => _then(v as _$_CategoryState));

  @override
  _$_CategoryState get _value => super._value as _$_CategoryState;

  @override
  $Res call({
    Object? categoryIncomeList = freezed,
    Object? categoryExpenseList = freezed,
  }) {
    return _then(_$_CategoryState(
      categoryIncomeList: categoryIncomeList == freezed
          ? _value._categoryIncomeList
          : categoryIncomeList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      categoryExpenseList: categoryExpenseList == freezed
          ? _value._categoryExpenseList
          : categoryExpenseList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class _$_CategoryState implements _CategoryState {
  const _$_CategoryState(
      {required final List<CategoryModel> categoryIncomeList,
      required final List<CategoryModel> categoryExpenseList})
      : _categoryIncomeList = categoryIncomeList,
        _categoryExpenseList = categoryExpenseList;

  final List<CategoryModel> _categoryIncomeList;
  @override
  List<CategoryModel> get categoryIncomeList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryIncomeList);
  }

  final List<CategoryModel> _categoryExpenseList;
  @override
  List<CategoryModel> get categoryExpenseList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryExpenseList);
  }

  @override
  String toString() {
    return 'CategoryState(categoryIncomeList: $categoryIncomeList, categoryExpenseList: $categoryExpenseList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryState &&
            const DeepCollectionEquality()
                .equals(other._categoryIncomeList, _categoryIncomeList) &&
            const DeepCollectionEquality()
                .equals(other._categoryExpenseList, _categoryExpenseList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categoryIncomeList),
      const DeepCollectionEquality().hash(_categoryExpenseList));

  @JsonKey(ignore: true)
  @override
  _$$_CategoryStateCopyWith<_$_CategoryState> get copyWith =>
      __$$_CategoryStateCopyWithImpl<_$_CategoryState>(this, _$identity);
}

abstract class _CategoryState implements CategoryState {
  const factory _CategoryState(
          {required final List<CategoryModel> categoryIncomeList,
          required final List<CategoryModel> categoryExpenseList}) =
      _$_CategoryState;

  @override
  List<CategoryModel> get categoryIncomeList =>
      throw _privateConstructorUsedError;
  @override
  List<CategoryModel> get categoryExpenseList =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryStateCopyWith<_$_CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
