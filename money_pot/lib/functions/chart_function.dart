import 'package:fl_chart/fl_chart.dart';
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

void chartData(List<TransactionModel>_model,List<TransactionModel> incomeOrExpenseModel) {
  name.clear();        
  name.clear();
  amountchart.clear();
  Future.forEach(_model, (TransactionModel model) {
    name.add(model.category.name);
    amountchart.add(model.amount);
  });

//..........expensecategoryy............
  expenseCategoryChart.clear();
 
  Future.forEach(incomeOrExpenseModel, (TransactionModel model) {
    if (!expenseCategoryChart.contains(model.category.name)) {
      expenseCategoryChart.add(model.category.name);
    }
  });
  

//..........incomecategoryy............
  incomeCategoryChart.clear();
     
  Future.forEach(incomeOrExpenseModel, (TransactionModel model) {
    if(model.type==CategoryType.income){
    if (!incomeCategoryChart.contains(model.category.name)) {
      incomeCategoryChart.add(model.category.name);
    }
    }
  });
}

//<..................expence_piechart................>
PieChartData getExpensepieChart(List<TransactionModel> model,List<TransactionModel> expensemodel) {
  chartData(model,expensemodel);
  double amount1 = 0;
  result.clear();
  sorted.clear();
  for (int i = 0; i < expenseCategoryChart.length; i++) {
    amount1 = 0;
    for (int j = 0; j < name.length; j++) {
      if (expenseCategoryChart[i] == name[j]) {
        amount1 += amountchart[j];
      }
    }

    final model =
        expenseChart(typename: expenseCategoryChart[i], amount: amount1);
    result[i] = model;
  }
  sorted = result.values.toList();
  sorted.sort(((a, b) => b.amount.compareTo(a.amount)));
  result1 = sorted.asMap();

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

PieChartData getIncomepieChart(List<TransactionModel> model,List<TransactionModel> incomemodel) {
  List<TransactionModel> _model=model;
  List<TransactionModel> _incomemodel=incomemodel;

  chartData(_model,_incomemodel);
  double amount1 = 0;
  incomeResult.clear();
  sortedIncomeResult.clear();
  for (int i = 0; i < incomeCategoryChart.length; i++) {
    amount1 = 0;
    for (int j = 0; j < name.length; j++) {
      if (incomeCategoryChart[i] == name[j]) {
        amount1 += amountchart[j];
      } else {}
    }

    final model =
        incomeChart(typename: incomeCategoryChart[i], amount: amount1);
    incomeResult[i] = model;
  }
  sortedIncomeResult = incomeResult.values.toList();
  sortedIncomeResult.sort(((a, b) => b.amount.compareTo(a.amount)));
  incomeResult1 = sortedIncomeResult.asMap();

  return PieChartData(
      centerSpaceRadius: 100,
      sections: incomeResult1
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
