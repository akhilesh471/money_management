part of 'transaction_bloc.dart';

@freezed
class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.addTransaction({required TransactionModel model}) = _AddTransaction;
  const factory TransactionEvent.seperateTransaction() = _SeperateTransaction;
  const factory TransactionEvent.deleteTransaction({required int id}) = _DeleteTransaction;
  const factory TransactionEvent.updateTransaction({required TransactionModel model,required int id}) = _UpdateTransaction;
  const factory TransactionEvent.filteredTransaction({required int index}) = _FilteredTransaction;
  const factory TransactionEvent.SearchInTransaction({required  String text}) = _SearchInTransaction;
  const factory TransactionEvent.dateByRangeTransaction({required  DateTimeRange text}) = _DateByRangeTransaction;
   const factory TransactionEvent.resetdata() = _ResetData;

}