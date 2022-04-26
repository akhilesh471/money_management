import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:spendee/db/transactions/transaction_db.dart';
import 'package:spendee/functions/chart_function.dart';
import 'package:spendee/functions/date_list_Functions.dart';
import 'package:spendee/models/category/category.dart';
import 'package:spendee/models/transactions/transactions.dart';
import 'package:spendee/screen/chart/tab_widget.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PieChartSample3State();
}

class PieChartSample3State extends State {
  int touchedIndex = 0;
  int dropdownvalue = 1;
  @override
  void initState() {
    super.initState();
   TransactionDb.instance.refreshUitrans();
  }

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final start = dateRange.start;
    final end = dateRange.end;

    return Scaffold(
      backgroundColor: Colors.green[100],
      body: SafeArea(
        child: Center(
          child: ValueListenableBuilder(
              valueListenable: TransactionDb.instance.incomeTransactionListNotifier,
              builder:
                  (BuildContext ctx, List<TransactionModel> model, Widget? _) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [ Container(
                            // width: width*0.58,
                            // height: Height*0.05,
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
                                borderRadius: BorderRadius.circular(15)),
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
                    Container(
                      height: Height*0.34,
                     
                      child:(TransactionDb.instance.incomeTransactionListNotifier
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
                        ): PieChart(
                        getIncomepieChart(),
                      ),
                    ),
                    if (TransactionDb
                        .instance.incomeTransactionListNotifier.value.isEmpty)
                      Text(
                        'Add data\'s to see  chartview',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                    SizedBox(
                        width: width * 0.9,
                        height: Height * 0.2,
                        child: ValueListenableBuilder(
                          valueListenable:
                              TransactionDb.instance.transactionListNotifier,
                          builder: (BuildContext ctx,
                              List<TransactionModel> model, Widget? _) {
                            return ListView.builder(
                              itemBuilder: (context, index) {
                                print('listndfknkf');
                                print(sortedIncomeResult.length);

                                return (TransactionDb
                                        .instance
                                        .incomeTransactionListNotifier
                                        .value
                                        .isEmpty)
                                    ? Text('')
                                    : ListTile(
                                        leading: Icon(
                                          Icons.circle,
                                          color: colors[index],
                                        ),
                                        title: Text(
                                            sortedIncomeResult[index].typename),
                                        trailing: Text(
                                            '${((sortedIncomeResult[index].amount / amountNotifier.value.income.abs()) * 100).toStringAsFixed(1)}%'),
                                      );
                              },
                              itemCount: sortedIncomeResult.length,
                            );
                          },
                        ))
                  ],
                );
              }),
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
  TransactionDb.instance.incomeTransactionListNotifier.value.clear();
   amountNotifier.value.income=0;
 
  amountNotifier.value.total=0;
//  TransactionDb.instance.expenseTransactionListNotifier.value.clear();
  Future.forEach(allTransaction, (TransactionModel model) {
      if (model.date.isAfter(startDay) && model.date.isBefore(lastDay)) {
      TransactionDb.instance.transactionListNotifier.value.add(model);
      TransactionDb.instance.transactionListNotifier.notifyListeners();
      if (model.type == CategoryType.income) {
        TransactionDb.instance.incomeTransactionListNotifier.value.add(model);
        TransactionDb.instance.incomeTransactionListNotifier.notifyListeners();
         amountNotifier.value.income+=model.amount;
        amountNotifier.value.total+=model.amount;
      }

    }
  });
  }
}
 