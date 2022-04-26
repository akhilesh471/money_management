import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:spendee/models/category/category.dart';

const CATEGORY_DB_NAME = 'category_database';
List<String> expenseCategoryChart = [];

abstract class CategoryDbFunctions {
  Future<List<CategoryModel>> getCategories();
  Future<void> insertCategory(CategoryModel value);
  Future<void> deleteCategory(String categoryId);
}

class CategoryDb implements CategoryDbFunctions {
  CategoryDb._internal();
  static CategoryDb instance = CategoryDb._internal();
  factory CategoryDb() {
    return instance;
  }

  ValueNotifier<List<CategoryModel>> incomeCategoryListNotifier =
      ValueNotifier([]);
  ValueNotifier<List<CategoryModel>> expenseCategoryListNotifier =
      ValueNotifier([]);

  @override
  Future<void> insertCategory(CategoryModel value) async {
    final _categoryDB = await Hive.openBox<CategoryModel>(CATEGORY_DB_NAME);
    await _categoryDB.put(value.id, value);
    await refreshUi();
  }

  @override
  Future<List<CategoryModel>> getCategories() async {
    final _categoryDB = await Hive.openBox<CategoryModel>(CATEGORY_DB_NAME);

    return _categoryDB.values.toList();
  }

  Future<void> refreshUi() async {
    final _categoriesUi = await getCategories();
    incomeCategoryListNotifier.value.clear();
    expenseCategoryListNotifier.value.clear();

    await Future.forEach(
      _categoriesUi,
      (CategoryModel category) {
        if (category.type == CategoryType.income) {
          incomeCategoryListNotifier.value.add(category);
        } else {
          expenseCategoryListNotifier.value.add(category);
        }
      },
    );

    incomeCategoryListNotifier.notifyListeners();
    expenseCategoryListNotifier.notifyListeners();
  }

  @override
  Future<void> deleteCategory(String categoryId) async {
    final _categoryDB = await Hive.openBox<CategoryModel>(CATEGORY_DB_NAME);
    await _categoryDB.delete(categoryId);
    await refreshUi();
  }

  Future<void> defaultCategories() async {
    for (int i = 0; i < defaultIncomeCategory.length; i++) {
      final model = CategoryModel(
          id: DateTime.now().microsecondsSinceEpoch.toString(),
          name: defaultIncomeCategory[i],
          type: CategoryType.income);
      insertCategory(model);
    }

    for (int i = 0; i < defaultExpenseCategory.length; i++) {
      final model = CategoryModel(
          id: DateTime.now().microsecondsSinceEpoch.toString(),
          name: defaultExpenseCategory[i],
          type: CategoryType.expense);
          insertCategory(model);
    }
  }
}

List<String> defaultIncomeCategory = ['salary', 'commission', 'sold items'];
List<IconData>defaultIncomeIconCategory=[Icons.currency_rupee,Icons.real_estate_agent,Icons.sell];
List<String> defaultExpenseCategory = ['food', 'dress', 'grocery'];
List<IconData>defaultExpenseIconCategory=[Icons.local_restaurant_sharp,FontAwesomeIcons.shirt
,Icons.local_grocery_store];