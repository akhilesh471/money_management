part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState(
      {required List<CategoryModel> categoryIncomeList,
      required List<CategoryModel> categoryExpenseList}) = _CategoryState;

  factory CategoryState.initial() {
    return CategoryState(categoryIncomeList: [], categoryExpenseList: []);
  }
}
