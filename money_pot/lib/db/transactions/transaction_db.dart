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



List<Color> colors = [
  Colors.green,
  Colors.lime,
  Colors.purple,
  Colors.blue,
  Colors.red,
  Colors.brown,
  Colors.grey,
  Colors.black,
  Colors.pink,
  Colors.blueGrey,
  Colors.deepOrange,
  Colors.teal,Colors.cyan,Colors.deepPurpleAccent
];
