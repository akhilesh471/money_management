import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:spendee/constants/constants.dart';
import 'package:spendee/db/category/category_db.dart';
import 'package:spendee/db/transactions/transaction_db.dart';
import 'package:spendee/functions/date_list_Functions.dart';
import 'package:spendee/models/category/category.dart';
import 'package:spendee/models/transactions/transactions.dart';

import 'package:spendee/widget/search_bar.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);
  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  int dropdownvalue = 1;
  @override
  void initState() {
    super.initState();
    TransactionDb.instance.refreshUitrans();
  }

  @override
  Widget build(BuildContext context) {
    CategoryDb.instance.refreshUi();
    TransactionDb.instance.amounts;
    final start = dateRange.start;
    final end = dateRange.end;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkgreen,
        title: heading,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.04,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                  color: lightgreen,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // SizedBox(
                    //   // height: MediaQuery.of(context).size.height * 0.01,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          'Transaction',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        AnimatedSearchBar(),
                      ],
                    ),
                    // SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          // width: width * 0.57,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          height: height * 0.057,
                          // width: width * 0.35,
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
                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height * 0.092,
                    //   width: MediaQuery.of(context).size.width * 0.95,
                    //   child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ValueListenableBuilder(
                            valueListenable: amountNotifier,
                            builder: (BuildContext ctx, Amount, Widget? _) {
                              return Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width: MediaQuery.of(context).size.width * 0.3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Colors.blueGrey),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      Icons.arrow_circle_up_outlined,
                                      color: Color.fromARGB(255, 2, 180, 8),
                                      size: 30,
                                    ),
                                    Text(
                                      (amountNotifier.value.income.toString() ==
                                              '0.0')
                                          ? '${amountNotifier.value.income.toString()}'
                                          : '+${amountNotifier.value.income.toString()}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color:
                                              Color.fromARGB(255, 2, 180, 8)),
                                    ),
                                  ],
                                ),
                              );
                            }),
                        ValueListenableBuilder(
                            valueListenable: amountNotifier,
                            builder: (BuildContext ctx, Amount, Widget? _) {
                              return Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width: MediaQuery.of(context).size.width * 0.3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Colors.blueGrey),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Icon(
                                      Icons.arrow_circle_down_outlined,
                                      color: Colors.red,
                                      size: 30,
                                    ),
                                    Text(
                                      (amountNotifier.value.expense
                                                  .toString() ==
                                              '0.0')
                                          ? '${amountNotifier.value.expense.toString()}'
                                          : '-${amountNotifier.value.expense.toString()}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.red),
                                    ),
                                  ],
                                ),
                              );
                            }),
                        ValueListenableBuilder(
                            valueListenable: amountNotifier,
                            builder: (BuildContext ctx, Amount, Widget? _) {
                              return Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width: MediaQuery.of(context).size.width * 0.3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Colors.blueGrey),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Text(
                                      'Total',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      amountNotifier.value.total.toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ],
                    ),
                    // )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.03,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.49,
              width: double.infinity,
              child: ValueListenableBuilder(
                  valueListenable:
                      TransactionDb.instance.transactionListNotifier,
                  builder: (BuildContext ctx, List<TransactionModel> newlist,
                      Widget? _) {
                    return searchEditingControl!.text.isNotEmpty &&
                                newlist.isEmpty ||
                            newlist.isEmpty
                        ? Padding(
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
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )
                        : ListView.builder(
                            itemCount: newlist.length,
                            itemBuilder: ((context, index) {
                              final data = newlist[index];
                              return Card(
                                color: lightgreen,
                                child: ListTile(
                                  leading: Text(parseDate(data.date),
                                      style: TextStyle(color: Colors.white)),
                                  title: Text(data.category.name,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400)),
                                  subtitle: Text(data.notes,
                                      style: TextStyle(color: Colors.white)),
                                  trailing: data.type == CategoryType.income
                                      ? Text(
                                          data.amount.toString(),
                                          style: const TextStyle(
                                            color:
                                                Color.fromARGB(255, 5, 175, 62),
                                          ),
                                        )
                                      : Text(
                                          data.amount.toString(),
                                          style: TextStyle(color: Colors.red),
                                        ),
                                ),
                              );
                            }));
                  }),
            )
          ],
        )),
      ),
    );
  }

  String parseDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
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
    Future.forEach(allTransaction, (TransactionModel model) {
      if (model.date.isAfter(startDay) && model.date.isBefore(lastDay)) {
        TransactionDb.instance.transactionListNotifier.value.add(model);
      }
      if (model.type == CategoryType.income) {
        TransactionDb.instance.incomeTransactionListNotifier.value.add(model);
        TransactionDb.instance.incomeTransactionListNotifier.notifyListeners();
      }
    });
    TransactionDb.instance.transactionListNotifier.notifyListeners();
  }
}
