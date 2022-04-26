import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:spendee/db/transactions/transaction_db.dart';

import 'package:spendee/functions/chart_function.dart';
import 'package:spendee/functions/date_list_Functions.dart';
import 'package:spendee/models/category/category.dart';
import 'package:spendee/models/transactions/transactions.dart';

class ExpenseChart extends StatefulWidget {
  const ExpenseChart({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PieChartSample3State();
}

class PieChartSample3State extends State {
  int touchedIndex = 0;
  int dropdownvalue = 1;
  @override
  Widget build(BuildContext context) {
    
    print('listndfknkf');
    print(sorted);
    final Height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
      final start = dateRange.start;
    final end = dateRange.end;
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Container(
                          
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        pickDateRange(context);
                                      },
                                      icon: Icon(
                                        Icons.calendar_month,
                                        color: Color.fromARGB(255, 5, 69, 122),
                                      )),
                                  Text(
                                    DateFormat('yyyy/MM/dd - ').format(start),
                                    style: TextStyle(color: Colors.white,fontSize: 13),
                                  ),
                                  Text(
                                    DateFormat('yyyy/MM/dd').format(end),
                                    style: TextStyle(color: Colors.white,fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                    Container(
                      height: Height * 0.057,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(10)),
                      child: DropdownButton(
                        underline: SizedBox(),
                        dropdownColor: Colors.blueGrey,
                        iconEnabledColor: Colors.white,
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: [
                          DropdownMenuItem(
                            child: const Text(
                              "All List",
                              style: TextStyle(color: Colors.white),
                            ),
                            value: 1,
                            onTap: () {
                              fullTransaction();
                            },
                          ),
                          DropdownMenuItem(
                            child: const Text(
                              "Today",
                              style: TextStyle(color: Colors.white),
                            ),
                            value: 2,
                            onTap: () {
                              daypicker();
                            },
                          ),
                          DropdownMenuItem(
                            child: const Text("This Week",
                                style: TextStyle(color: Colors.white)),
                            value: 3,
                            onTap: () {
                              weekPicker();
                            },
                          ),
                          DropdownMenuItem(
                            child: const Text("This Month",
                                style: TextStyle(color: Colors.white)),
                            value: 4,
                            onTap: () {
                              monthPicker();
                            },
                          ),
                          DropdownMenuItem(
                            child: const Text("This Year",
                                style: TextStyle(color: Colors.white)),
                            value: 5,
                            onTap: () {
                              yearPicker();
                            },
                          ),
                        ],
                        onChanged: (int? value) {
                          setState(() {
                            dropdownvalue = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                    height: Height*0.34,
                  child: (TransactionDb.instance.expenseTransactionListNotifier
                          .value.isEmpty)
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              FontAwesomeIcons.fileCircleXmark,color: Colors.white,
                              size: 90,
                            ),
                            Text(
                              'No data found',
                              style: TextStyle(fontSize: 20,color: Colors.white),
                            )
                          ],
                        )
                      : PieChart(
                          getExpensepieChart(),
                        )),if(TransactionDb.instance.expenseTransactionListNotifier.value.isEmpty)Text('Add data\'s to see  chartview',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
              Container(
                width: width * 0.9,
                height: Height * 0.2,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return(TransactionDb.instance.expenseTransactionListNotifier.value.isEmpty)?Text(''): ListTile(
                      leading: Icon(
                        Icons.circle,
                        color: colors[index],
                      ),
                      title: Text(sorted[index].typename),
                      trailing: Text(
                          '${((sorted[index].amount / amountNotifier.value.expense.abs()) * 100).toStringAsFixed(1)}%'),
                    );
                  },
                  itemCount: sorted.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  DateTimeRange dateRange =
      DateTimeRange(start: DateTime(2022, 01, 01), end: DateTime(2022, 01, 03));

  Future pickDateRange(BuildContext context) async {
    DateTimeRange? newDateRange = await showDateRangePicker(
        context: context,
        firstDate: DateTime(2000),
        lastDate: DateTime.now(),
        initialDateRange: dateRange);
    if (newDateRange == null) return;

    setState(() {
      dateRange = newDateRange;
      periodPicker();
    });
  }
  
  periodPicker() async {
    final startDay = dateRange.start.subtract(const Duration(days: 1));
    final lastDay = dateRange.end.add(const Duration(days: 1));
   
   List<TransactionModel> allTransaction =
      await TransactionDb.instance.getAllTransaction();
  TransactionDb.instance.transactionListNotifier.value.clear();
  // TransactionDb.instance.incomeTransactionListNotifier.value.clear();
 TransactionDb.instance.expenseTransactionListNotifier.value.clear();

  amountNotifier.value.expense=0;
  amountNotifier.value.total=0;
  Future.forEach(allTransaction, (TransactionModel model) {
      if (model.date.isAfter(startDay) && model.date.isBefore(lastDay)) {
      TransactionDb.instance.transactionListNotifier.value.add(model);
      TransactionDb.instance.transactionListNotifier.notifyListeners();
      if (model.type == CategoryType.expense) {
        TransactionDb.instance.expenseTransactionListNotifier.value.add(model);
        TransactionDb.instance.expenseTransactionListNotifier.notifyListeners();
          amountNotifier.value.expense+=model.amount;
        amountNotifier.value.total-=model.amount;
      }

    }
  });
   
  }
}
