part of 'transaction_bloc.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState(
      {required List<TransactionModel> incomeTransactionList,
      required List<TransactionModel> expenseTransactionList,
      required List<TransactionModel> alltransaction,
      required List<TransactionModel> filtertransaction,
      required List<TransactionModel> filteredIncometransaction,
      required List<TransactionModel> filteredExpensetransaction,
      required double totalamount,
      required double incomeamount,
      required double expenseamount,
      required bool showfilterlist,
      required DateTimeRange daterange}) = _TransactionState;

  factory TransactionState.initial() {
    return TransactionState(filteredIncometransaction: [],
    filteredExpensetransaction: [],
        expenseamount: 0,
        incomeamount: 0,
        totalamount: 0,
        incomeTransactionList: [],
        expenseTransactionList: [],
        alltransaction: [],
        filtertransaction: [],
        showfilterlist: false,
        daterange: DateTimeRange(
            start: DateTime.now().subtract(Duration(days: 4)),
            end: DateTime.now()));
  }
}
