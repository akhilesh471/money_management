import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:spendee/models/category/category.dart';

import '../../db/category/category_db.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryState.initial()) {
    on<_AddCategorydetailsEvent>((event, emit) async {
      final box = await Hive.openBox<CategoryModel>(CATEGORY_DB_NAME);
      box.put(event.model.id, event.model);

      add(const _SeperateCategoryEvent());
    });

    on<_SeperateCategoryEvent>((event, emit) async {
      final box = await Hive.openBox<CategoryModel>(CATEGORY_DB_NAME);
      List<CategoryModel> incomeList = [];
      List<CategoryModel> expenseList = [];
      await Future.forEach(box.values, (CategoryModel model) async {
        if (model.type == CategoryType.income) {
          incomeList.add(model);
        } else if (model.type == CategoryType.expense) {
          expenseList.add(model);
        }
      });
      emit(CategoryState(
          categoryIncomeList: incomeList, categoryExpenseList: expenseList));
    });

    on<_$_DeleteCategoryEvent>((event, emit) async {
      final box = await Hive.openBox<CategoryModel>(CATEGORY_DB_NAME);
      box.delete(event.index);
      add(_SeperateCategoryEvent());
    });
  }
}
