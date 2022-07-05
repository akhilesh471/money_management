import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:spendee/db/transactions/transaction_db.dart';
import 'package:spendee/functions/chart_function.dart';
import 'package:spendee/logic/transaction/bloc/transaction_bloc.dart';
import 'package:spendee/models/transactions/transactions.dart';
import 'package:spendee/screen/home/transactionwidget.dart';
import 'package:spendee/widget/droopdownbox.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PieChartSample3State();
}

class PieChartSample3State extends State {
  @override
  void initState() {
    super.initState();
    context.read<TransactionBloc>().add(TransactionEvent.filteredTransaction(index: 1));
  }

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.green[100],
          body: SafeArea(
            child: Center(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  pickDateRange(context);
                                },
                                icon: const Icon(
                                  Icons.calendar_month,
                                  color: Color.fromARGB(255, 5, 69, 122),
                                )),
                            Text(
                              DateFormat('yyyy/MM/dd - ')
                                  .format(state.daterange.start),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            Text(
                              DateFormat('yyyy/MM/dd')
                                  .format(state.daterange.end),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            )
                          ],
                        ),
                      ),
                      DropdownBoxWidget()
                    ],
                  ),
                ),
                SizedBox(
                  height: Height * 0.34,
                  child: (state.incomeTransactionList.isEmpty)
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              FontAwesomeIcons.fileCircleXmark,
                              color: Colors.white,
                              size: 90,
                            ),
                            Text(
                              'No data found',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )
                          ],
                        )
                      : PieChart(
                          getIncomepieChart(
                              state.showfilterlist==false
                                  ? state.alltransaction
                                  : state.filtertransaction,
                              state.filteredIncometransaction),
                        ),
                ),
                if (state.incomeTransactionList.isEmpty)
                  const Text(
                    'Add data\'s to see  chartview',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                SizedBox(
                    width: width * 0.9,
                    height: Height * 0.2,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        print(sortedIncomeResult.length);

                        return (state.incomeTransactionList.isEmpty)
                            ? Text('')
                            : ListTile(
                                leading: Icon(
                                  Icons.circle,
                                  color: colors[index],
                                ),
                                title: Text(sortedIncomeResult[index].typename),
                                trailing: Text(
                                    '${((sortedIncomeResult[index].amount / state.incomeamount.abs()) * 100).toStringAsFixed(1)}%'),
                              );
                      },
                      itemCount: sortedIncomeResult.length,
                    ))
              ],
            )),
          ),
        );
      },
    );
  }
}
