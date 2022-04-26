import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:spendee/functions/chart_function.dart';

import 'package:spendee/models/category/category.dart';
import 'package:spendee/models/transactions/transactions.dart';

int totalincome = 0;
int totalexpense = 0;

List<String> name = [];
List<double> amountchart = [];
Map<int, expenseChart> result = {};
Map<int, incomeChart> incomeResult = {};
Map<String, double> resultIncome = {};
const TRANSACTION_DB_NAME = 'transaction-db';
ValueNotifier<Amount> amountNotifier = ValueNotifier(Amount());
ValueNotifier<List<Chart>> ChartNotifier = ValueNotifier([]);

abstract class TransactionDbFunction {
  Future<void> addTransaction(TransactionModel value);
  Future<List<TransactionModel>> getAllTransaction();
  Future<void> UpdateTransaction(TransactionModel value, int index);
  Future<void> deleteTransaction(int id);
  Future<void> amounts();
  Future<List<TransactionModel>> clearData();
}

class TransactionDb implements TransactionDbFunction {
  TransactionDb._internal();
  static TransactionDb instance = TransactionDb._internal();
  factory TransactionDb() {
    return instance;
  }

  ValueNotifier<List<TransactionModel>> transactionListNotifier =
      ValueNotifier([]);
  ValueNotifier<List<TransactionModel>> incomeTransactionListNotifier =
      ValueNotifier([]);
  ValueNotifier<List<TransactionModel>> expenseTransactionListNotifier =
      ValueNotifier([]);

  @override
  Future<void> addTransaction(TransactionModel value) async {
    final _transDb = await Hive.openBox<TransactionModel>(TRANSACTION_DB_NAME);
    await _transDb.put(value.id, value);
  }

  Future<void> refreshUitrans() async {
    final _list = await getAllTransaction();
    _list.sort(
      (a, b) => b.date.compareTo(a.date),
    );
    incomeTransactionListNotifier.value.clear();
    expenseTransactionListNotifier.value.clear();
    transactionListNotifier.value.clear();
    transactionListNotifier.value.addAll(_list);
    transactionListNotifier.notifyListeners();

    await Future.forEach(_list, (TransactionModel trans) {
      if (trans.type == CategoryType.income) {
        incomeTransactionListNotifier.value.add(trans);
      } else {
        expenseTransactionListNotifier.value.add(trans);
      }
    });

    await amounts();

    incomeTransactionListNotifier.notifyListeners();
    expenseTransactionListNotifier.notifyListeners();
  }

  @override
  Future<List<TransactionModel>> getAllTransaction() async {
    final _transDb = await Hive.openBox<TransactionModel>(TRANSACTION_DB_NAME);
    // _transDb.clear();
    return _transDb.values.toList();
  }

  @override
  Future<void> UpdateTransaction(TransactionModel value, int id) async {
    final _transDb = await Hive.openBox<TransactionModel>(TRANSACTION_DB_NAME);
    await _transDb.put(id, value);
    refreshUitrans();
  }

  @override
  Future<void> deleteTransaction(int id) async {
    final _transDb = await Hive.openBox<TransactionModel>(TRANSACTION_DB_NAME);
    await _transDb.delete(id);
    refreshUitrans();
  }

  @override
  Future<void> amounts() async {
    // totalexpense=0;
    // totalincome=0;

    amountNotifier.value.income = 0;
    amountNotifier.value.expense = 0;
    amountNotifier.value.total = 0;
    final List<TransactionModel> data = transactionListNotifier.value;
    await Future.forEach(data, (TransactionModel model) async {
      if (model.type == CategoryType.income) {
        amountNotifier.value.income += model.amount;
        amountNotifier.value.total += model.amount;
      } else {
        amountNotifier.value.expense += model.amount;
        amountNotifier.value.total -= model.amount;
      }
      amountNotifier.notifyListeners();
      // if(model.type==CategoryType.income){
      //   totalincome =totalincome+model.amount.toInt();
      // }else{
      //   totalexpense+=model.amount.toInt() ;
      // }
    });
  }

  @override
  Future<List<TransactionModel>> clearData() async {
    final _transDb = await Hive.openBox<TransactionModel>(TRANSACTION_DB_NAME);
    _transDb.clear();
    transactionListNotifier.notifyListeners();
    incomeTransactionListNotifier.notifyListeners();
    expenseTransactionListNotifier.notifyListeners();
    return _transDb.values.toList();
  }
}

class Amount {
  double income;
  double expense;
  double total;
  Amount({this.income = 0, this.expense = 0, this.total = 0});
}

class Chart {
  String? typeName;
  double amount = 0;
  Chart(this.typeName, this.amount);
}

List<Color> colors = [
  Colors.green,
  Colors.lime,
  Colors.purple,
  Colors.blue,
  Colors.red,
  Colors.brown,
  Colors.grey
];
