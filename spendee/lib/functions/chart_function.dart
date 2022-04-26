import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spendee/db/category/category_db.dart';
import 'package:spendee/db/transactions/transaction_db.dart';
import 'package:spendee/models/category/category.dart';
import 'package:spendee/models/transactions/transactions.dart';
import 'package:spendee/screen/splash_onboard_screen/on_board_screen.dart';

Map<int, expenseChart> result1 = {};
Map<int, incomeChart> incomeResult1 = {};

List<String> incomeCategoryChart = [];
List<expenseChart> sorted = [];
List<incomeChart> sortedIncomeResult = [];

void chartData() {
  name.clear();
  List<TransactionModel> expenseChart =
      TransactionDb.instance.transactionListNotifier.value;
  name.clear();
  amountchart.clear();
  Future.forEach(expenseChart, (TransactionModel model) {
    name.add(model.category.name);
    amountchart.add(model.amount);
  });
  print('name length');
  print(name);
  print(name.length);

//..........expensecategoryy............
  expenseCategoryChart.clear();
  List<TransactionModel> expense =
      TransactionDb.instance.expenseTransactionListNotifier.value;
  
  
  Future.forEach(expense, (TransactionModel model) {
    if (!expenseCategoryChart.contains(model.category.name)) {
      expenseCategoryChart.add(model.category.name);
    }
  });

//..........incomecategoryy............
  incomeCategoryChart.clear();
  List<TransactionModel> income =
      TransactionDb.instance.incomeTransactionListNotifier.value;
  Future.forEach(income, (TransactionModel model) {
    if (!incomeCategoryChart.contains(model.category.name)) {
      incomeCategoryChart.add(model.category.name);
    }
  });
  print('expense length');
  print(income);
  print(income.length);
}

//<..................expence_piechart................>
PieChartData getExpensepieChart() {
  chartData();
  double amount1 = 0;
  result.clear();
  sorted.clear();
  for (int i = 0; i < expenseCategoryChart.length; i++) {
    amount1 = 0;
    for (int j = 0; j < name.length; j++) {
      if (expenseCategoryChart[i] == name[j]) {
        amount1 += amountchart[j];
      } else {
        print('hello');
      }
    }

    final model =
        expenseChart(typename: expenseCategoryChart[i], amount: amount1);
    result[i] = model;
    print('heloo sorted');
  }
  sorted = result.values.toList();
  sorted.sort(((a, b) => b.amount.compareTo(a.amount)));
  result1 = sorted.asMap();
  print('sortd');
  return PieChartData(
      centerSpaceRadius: 100,
      sections: result1
          .map((key, value) {
            return MapEntry(
              key,
              PieChartSectionData(
                  value: value.amount,
                  title: '',
                  color: colors[key],
                  radius: 30),
            );
          })
          .values
          .toList());
}

class expenseChart {
  String typename;
  double amount;
  expenseChart({required this.typename, required this.amount});
}

PieChartData getIncomepieChart() {
  chartData();
  double amount1 = 0;
  incomeResult.clear();
  sortedIncomeResult.clear();
  for (int i = 0; i < incomeCategoryChart.length; i++) {
    amount1 = 0;
    for (int j = 0; j < name.length; j++) {
      if (incomeCategoryChart[i] == name[j]) {
        amount1 += amountchart[j];
      } else {
        print('hello');
      }
    }

    final model =
        incomeChart(typename: incomeCategoryChart[i], amount: amount1);
    incomeResult[i] = model;
    print('heloo sortedIncomeResult');
  }
  sortedIncomeResult = incomeResult.values.toList();
  sortedIncomeResult.sort(((a, b) => b.amount.compareTo(a.amount)));
  incomeResult1 = sortedIncomeResult.asMap();
  print('sortd');
  return PieChartData(
      centerSpaceRadius: 100,
      sections: 
          incomeResult1
              .map((key, value) {
                return MapEntry(
                  key,
                  PieChartSectionData(
                      value: value.amount,
                      title: '',
                      color: colors[key],
                      radius: 30),
                );
              })
              .values
              .toList()
          );
}

class incomeChart {
  String typename;
  double amount;
  incomeChart({required this.typename, required this.amount});
}

Future<bool?> getHomeScreen() async {
  final prefs = await SharedPreferences.getInstance();
  bool? variable = prefs.getBool(key_value) ?? false;
  return variable;
}
