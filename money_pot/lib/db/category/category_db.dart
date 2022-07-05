import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:spendee/models/category/category.dart';

const CATEGORY_DB_NAME = 'category_database';
List<String> expenseCategoryChart = [];



//   Future<void> defaultCategories() async {
//     for (int i = 0; i < defaultIncomeCategory.length; i++) {
//       final model = CategoryModel(
//           id: DateTime.now().microsecondsSinceEpoch.toString(),
//           name: defaultIncomeCategory[i],
//           type: CategoryType.income);
//       insertCategory(model);
//     }

//     for (int i = 0; i < defaultExpenseCategory.length; i++) {
//       final model = CategoryModel(
//           id: DateTime.now().microsecondsSinceEpoch.toString(),
//           name: defaultExpenseCategory[i],
//           type: CategoryType.expense);
//           insertCategory(model);
//     }
//   }
 

// List<String> defaultIncomeCategory = ['salary', 'commission', 'sold items'];
// List<IconData>defaultIncomeIconCategory=[Icons.currency_rupee,Icons.real_estate_agent,Icons.sell];
// List<String> defaultExpenseCategory = ['food', 'dress', 'grocery'];
// List<IconData>defaultExpenseIconCategory=[Icons.local_restaurant_sharp,FontAwesomeIcons.shirt
// ,Icons.local_grocery_store];