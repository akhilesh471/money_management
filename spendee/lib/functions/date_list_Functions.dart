import 'package:spendee/db/transactions/transaction_db.dart';
import 'package:spendee/models/category/category.dart';
import 'package:spendee/models/transactions/transactions.dart';

fullTransaction() async {
  List<TransactionModel> allTransaction =
      await TransactionDb.instance.getAllTransaction();
  TransactionDb.instance.transactionListNotifier.value.clear();
  TransactionDb.instance.incomeTransactionListNotifier.value.clear();
  TransactionDb.instance.expenseTransactionListNotifier.value.clear();
  amountNotifier.value.income=0;
  amountNotifier.value.expense=0;
  amountNotifier.value.total=0;
  Future.forEach(allTransaction, (TransactionModel model) {
    if (model.date == model.date) {
      TransactionDb.instance.transactionListNotifier.value.add(model);
      TransactionDb.instance.transactionListNotifier.notifyListeners();

      if (model.type == CategoryType.income) {
        TransactionDb.instance.incomeTransactionListNotifier.value.add(model);
        TransactionDb.instance.incomeTransactionListNotifier.notifyListeners();
          amountNotifier.value.income+=model.amount;
        amountNotifier.value.total+=model.amount;
      }
if(model.type==CategoryType.expense){
  TransactionDb.instance.expenseTransactionListNotifier.value.add(model);
  TransactionDb.instance.expenseTransactionListNotifier.notifyListeners();
  amountNotifier.value.expense+=model.amount;
        amountNotifier.value.total-=model.amount;
}

    }
  });
}

daypicker() async {
  final today = DateTime.now().day;
  final year = DateTime.now().year;
  List<TransactionModel> allTransaction =
      await TransactionDb.instance.getAllTransaction();
  TransactionDb.instance.transactionListNotifier.value.clear();
  TransactionDb.instance.incomeTransactionListNotifier.value.clear();
  TransactionDb.instance.expenseTransactionListNotifier.value.clear();
  amountNotifier.value.income=0;
  amountNotifier.value.expense=0;
  amountNotifier.value.total=0;
  Future.forEach(allTransaction, (TransactionModel model) {
    if (model.date.day == today && model.date.year == year) {
      TransactionDb.instance.transactionListNotifier.value.add(model);
      TransactionDb.instance.transactionListNotifier.notifyListeners();
      if (model.type == CategoryType.income) {
        TransactionDb.instance.incomeTransactionListNotifier.value.add(model);
        TransactionDb.instance.incomeTransactionListNotifier.notifyListeners();
        amountNotifier.value.income+=model.amount;
        amountNotifier.value.total+=model.amount;
      }
      if(model.type==CategoryType.expense){
  TransactionDb.instance.expenseTransactionListNotifier.value.add(model);
  TransactionDb.instance.expenseTransactionListNotifier.notifyListeners();
amountNotifier.value.expense+=model.amount;
        amountNotifier.value.total-=model.amount;
}
    }
  });
}

weekPicker() async {
  final today = DateTime.now();
  final week = today.subtract(Duration(days: 7));
  List<TransactionModel> allTransaction =
      await TransactionDb.instance.getAllTransaction();
  TransactionDb.instance.transactionListNotifier.value.clear();
  TransactionDb.instance.incomeTransactionListNotifier.value.clear();
   TransactionDb.instance.expenseTransactionListNotifier.value.clear();
   amountNotifier.value.income=0;
  amountNotifier.value.expense=0;
  amountNotifier.value.total=0;
  Future.forEach(allTransaction, (TransactionModel model) {
    if (model.date.isAfter(week)) {
      TransactionDb.instance.transactionListNotifier.value.add(model);
      TransactionDb.instance.transactionListNotifier.notifyListeners();
      if (model.type == CategoryType.income) {
        TransactionDb.instance.incomeTransactionListNotifier.value.add(model);
        TransactionDb.instance.incomeTransactionListNotifier.notifyListeners();
          amountNotifier.value.income+=model.amount;
        amountNotifier.value.total+=model.amount;
      }
           if(model.type==CategoryType.expense){
  TransactionDb.instance.expenseTransactionListNotifier.value.add(model);
  TransactionDb.instance.expenseTransactionListNotifier.notifyListeners();
  amountNotifier.value.expense+=model.amount;
        amountNotifier.value.total-=model.amount;
}
    }
  });
}

monthPicker() async {
  final initialMonth = DateTime.now().month;
  final year = DateTime.now().year;
  List<TransactionModel> allTransaction =
      await TransactionDb.instance.getAllTransaction();
  TransactionDb.instance.transactionListNotifier.value.clear();
  TransactionDb.instance.incomeTransactionListNotifier.value.clear();
   TransactionDb.instance.expenseTransactionListNotifier.value.clear();
   amountNotifier.value.income=0;
  amountNotifier.value.expense=0;
  amountNotifier.value.total=0;
  Future.forEach(allTransaction, (TransactionModel model) {
    if (model.date.month == initialMonth && model.date.year == year) {
      TransactionDb.instance.transactionListNotifier.value.add(model);
      TransactionDb.instance.transactionListNotifier.notifyListeners();
      if (model.type == CategoryType.income) {
        TransactionDb.instance.incomeTransactionListNotifier.value.add(model);
        TransactionDb.instance.incomeTransactionListNotifier.notifyListeners();
          amountNotifier.value.income+=model.amount;
        amountNotifier.value.total+=model.amount;
      }
           if(model.type==CategoryType.expense){
  TransactionDb.instance.expenseTransactionListNotifier.value.add(model);
  TransactionDb.instance.expenseTransactionListNotifier.notifyListeners();
  amountNotifier.value.expense+=model.amount;
        amountNotifier.value.total-=model.amount;
}
    }
  });
}

yearPicker() async {
  final Year = DateTime.now().year;
  List<TransactionModel> allTransaction =
      await TransactionDb.instance.getAllTransaction();
  TransactionDb.instance.transactionListNotifier.value.clear();
  TransactionDb.instance.incomeTransactionListNotifier.value.clear();
 TransactionDb.instance.expenseTransactionListNotifier.value.clear();
 amountNotifier.value.income=0;
  amountNotifier.value.expense=0;
  amountNotifier.value.total=0;
  Future.forEach(allTransaction, (TransactionModel model) {
    if (model.date.year == Year) {
      TransactionDb.instance.transactionListNotifier.value.add(model);
      TransactionDb.instance.transactionListNotifier.notifyListeners();
      if (model.type == CategoryType.income) {
        TransactionDb.instance.incomeTransactionListNotifier.value.add(model);
        TransactionDb.instance.incomeTransactionListNotifier.notifyListeners();
          amountNotifier.value.income+=model.amount;
        amountNotifier.value.total+=model.amount;
      }
           if(model.type==CategoryType.expense){
  TransactionDb.instance.expenseTransactionListNotifier.value.add(model);
  TransactionDb.instance.expenseTransactionListNotifier.notifyListeners();
  amountNotifier.value.expense+=model.amount;
        amountNotifier.value.total-=model.amount;
}
    }
  });
}
//MONTH PICKER



