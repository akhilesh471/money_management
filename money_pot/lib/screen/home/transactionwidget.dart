import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spendee/constants/constants.dart';
import 'package:spendee/logic/transaction/bloc/transaction_bloc.dart';
import 'package:spendee/models/category/category.dart';
import 'package:spendee/screen/home/transaction.dart';

class TransactionWidget extends StatelessWidget {
  TransactionWidget({Key? key, required this.length, required this.value})
      : super(key: key);
  final int length;
  dynamic value;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: length,
        itemBuilder: ((context, index) {
          final data = value[index];
          return Card(
            color: lightgreen,
            child: ListTile(
              leading: Text(parseDate(data.date),
                  style: TextStyle(color: Colors.white)),
              title: Text(data.notes, style: TextStyle(color: Colors.white)),
              subtitle: Text(data.category.name,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w400)),
              trailing: data.type == CategoryType.income
                  ? Text(
                      '+₹${data.amount.toString()}',
                      style: const TextStyle(
                        color: Color.fromARGB(255, 5, 175, 62),
                      ),
                    )
                  : Text(
                      '-₹${data.amount.toString()}',
                      style: TextStyle(color: Colors.red),
                    ),
            ),
          );
        }));
  }
}

class Nodatafound extends StatelessWidget {
  const Nodatafound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: Column(
        children: const [
          Icon(
            Icons.search_off,
            size: 80,
            color: Color.fromARGB(255, 30, 56, 31),
          ),
          Text(
            'No results found',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

String parseDate(DateTime date) {
  return '${date.day}/${date.month}/${date.year}';
}

Future pickDateRange(BuildContext context) async {
  DateTimeRange? newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
      initialDateRange: dateRange);
  if (newDateRange == null) return;

  dateRange = newDateRange;
  context
      .read<TransactionBloc>()
      .add(TransactionEvent.dateByRangeTransaction(text: dateRange));
}
