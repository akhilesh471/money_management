import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_time_patterns.dart';
import 'package:spendee/db/transactions/transaction_db.dart';
import 'package:spendee/models/category/category.dart';
import 'package:spendee/models/transactions/transactions.dart';
import 'package:spendee/screen/home/transaction.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';
part 'transaction_bloc.freezed.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc() : super(TransactionState.initial()) {
    on<_AddTransaction>((event, emit) async {
      final box = await Hive.openBox<TransactionModel>(TRANSACTION_DB_NAME);
      box.put(event.model.id, event.model);
      add(_SeperateTransaction());
    });

    on<_SeperateTransaction>((event, emit) async {
      final box = await Hive.openBox<TransactionModel>(TRANSACTION_DB_NAME);
      List<TransactionModel> incomeTransList = [];
      List<TransactionModel> expenseTransList = [];
      double incomeamounttransaction = 0;
      double expenseamounttransaction = 0;
      double totalamounttransaction = 0;
      await Future.forEach(box.values, (TransactionModel model) {
        if (model.type == CategoryType.income) {
          incomeTransList.add(model);
          incomeamounttransaction += model.amount;
          totalamounttransaction += model.amount;
        } else if (model.type == CategoryType.expense) {
          expenseTransList.add(model);
          expenseamounttransaction += model.amount;
          totalamounttransaction += model.amount;
        }
      });
      emit(state.copyWith(
          alltransaction: box.values.toList(),
          incomeTransactionList: incomeTransList,
          expenseTransactionList: expenseTransList,
          incomeamount: incomeamounttransaction,
          expenseamount: expenseamounttransaction,
          totalamount: totalamounttransaction,
          showfilterlist: false));
    });

    on<_DeleteTransaction>((event, emit) async {
      final box = await Hive.openBox<TransactionModel>(TRANSACTION_DB_NAME);
      box.delete(event.id);
      add(_SeperateTransaction());
    });

    on<_UpdateTransaction>((event, emit) async {
      final box = await Hive.openBox<TransactionModel>(TRANSACTION_DB_NAME);
      box.put(event.id, event.model);
      add(_SeperateTransaction());
    });

    on<_FilteredTransaction>((event, emit) async {
      final box = await Hive.openBox<TransactionModel>(TRANSACTION_DB_NAME);
      List<TransactionModel> filteredList = [];
      List<TransactionModel> filteredincomeList = [];
      List<TransactionModel> filteredexpenseList = [];
      double incomeamounttransaction = 0;
      double expenseamounttransaction = 0;
      double totalamounttransaction = 0;
      final today = DateTime.now().day;
      final year = DateTime.now().year;
      final thisday = DateTime.now();
      final week = thisday.subtract(Duration(days: 7));
      final initialMonth = DateTime.now().month;

      switch (event.index) {
        case 1:
          Future.forEach(box.values, (TransactionModel data) {
            filteredList.add(data);
            if (data.type == CategoryType.income) {
              incomeamounttransaction += data.amount;
              totalamounttransaction += data.amount;
              filteredincomeList.add(data);
            }
            if (data.type == CategoryType.expense) {
              expenseamounttransaction += data.amount;
              totalamounttransaction -= data.amount;
              filteredexpenseList.add(data);
            }
          });

          break;
        case 2:
          Future.forEach(box.values, (TransactionModel data) {
            if (data.date.day == today && data.date.year == year) {
              filteredList.add(data);
              if (data.type == CategoryType.income) {
                incomeamounttransaction += data.amount;
                totalamounttransaction += data.amount;
                filteredincomeList.add(data);
              }
              if (data.type == CategoryType.expense) {
                expenseamounttransaction += data.amount;
                totalamounttransaction -= data.amount;
                filteredexpenseList.add(data);
              }
            }
          });
          break;
        case 3:
          Future.forEach(box.values, (TransactionModel data) {
            if (data.date.isAfter(week)) {
              filteredList.add(data);
              if (data.type == CategoryType.income) {
                incomeamounttransaction += data.amount;
                totalamounttransaction += data.amount;
                filteredincomeList.add(data);
              }
              if (data.type == CategoryType.expense) {
                expenseamounttransaction += data.amount;
                totalamounttransaction -= data.amount;
                filteredexpenseList.add(data);
              }
            }
          });
          break;
        case 4:
          Future.forEach(box.values, (TransactionModel data) {
            if (data.date.month == initialMonth && data.date.year == year) {
              filteredList.add(data);
              if (data.type == CategoryType.income) {
                incomeamounttransaction += data.amount;
                totalamounttransaction += data.amount;
                filteredincomeList.add(data);
              }
              if (data.type == CategoryType.expense) {
                expenseamounttransaction += data.amount;
                totalamounttransaction -= data.amount;
                filteredexpenseList.add(data);
              }
            }
          });
          break;
        case 5:
          Future.forEach(box.values, (TransactionModel data) {
            if (data.date.year == year) {
              filteredList.add(data);
              if (data.type == CategoryType.income) {
                incomeamounttransaction += data.amount;
                totalamounttransaction += data.amount;
                filteredincomeList.add(data);
              }
              if (data.type == CategoryType.expense) {
                expenseamounttransaction += data.amount;
                totalamounttransaction -= data.amount;
                filteredexpenseList.add(data);
              }
            }
          });
          break;
        default:
          debugPrint('no data found');
      }
      emit(state.copyWith(
          filtertransaction: filteredList,
          showfilterlist: true,
          expenseamount: expenseamounttransaction,
          incomeamount: incomeamounttransaction,
          totalamount: totalamounttransaction,
          filteredIncometransaction: filteredincomeList,
          filteredExpensetransaction: filteredexpenseList));
    });

    on<_SearchInTransaction>((event, emit) async {
      final box = await Hive.openBox<TransactionModel>(TRANSACTION_DB_NAME);
      emit(state.copyWith(
          filtertransaction: box.values
              .where((TransactionModel model) =>
                  model.notes.toLowerCase().contains(event.text.toLowerCase()))
              .toList(),
          showfilterlist: true));
    });

    on<_DateByRangeTransaction>((event, emit) async {
      List<TransactionModel> filteredList = [];
      List<TransactionModel> incomeFilteredList = [];
      List<TransactionModel> expenseFilteresList = [];
      double filteredIncomeAmount = 0;
      double filteredExpenseAmount = 0;
     
      DateTime start = event.text.start;
      DateTime end = event.text.end;
      final box = await Hive.openBox<TransactionModel>(TRANSACTION_DB_NAME);
      await Future.forEach(box.values, (TransactionModel data) {
        if (data.date.isAfter(start.subtract(Duration(days: 1))) &&
            data.date.isBefore(end.add(Duration(days: 1)))) {
          filteredList.add(data);
         
          if (data.type == CategoryType.income) {
            filteredIncomeAmount += data.amount;
            incomeFilteredList.add(data);
          } else if (data.type == CategoryType.expense) {
            filteredExpenseAmount += data.amount;
            expenseFilteresList.add(data);
          }
        }
      });
      print(filteredList.length);
      emit(state.copyWith(
          filtertransaction: filteredList,
          showfilterlist: true,
          daterange: DateTimeRange(start: start, end: end),
          incomeamount: filteredIncomeAmount,
          expenseamount: filteredExpenseAmount,
          filteredIncometransaction: incomeFilteredList,
          filteredExpensetransaction: expenseFilteresList));
    });

    on<_ResetData>((event, emit)async {
       final box = await Hive.openBox<TransactionModel>(TRANSACTION_DB_NAME);
       final key=box.keys;
       box.deleteAll(key);
        add(_SeperateTransaction());
    });
  }
}
