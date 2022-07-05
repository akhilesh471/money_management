import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:spendee/db/transactions/transaction_db.dart';
import 'package:spendee/functions/chart_function.dart';
import 'package:spendee/logic/transaction/bloc/transaction_bloc.dart';
import 'package:spendee/screen/home/transactionwidget.dart';
import 'package:spendee/widget/droopdownbox.dart';

class ExpenseChart extends StatefulWidget {
  const ExpenseChart({Key? key}) : super(key: key);

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
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: BlocBuilder<TransactionBloc, TransactionState>(
        builder: (context, state) {
          return SafeArea(
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
                                  icon:const Icon(
                                    Icons.calendar_month,
                                    color: Color.fromARGB(255, 5, 69, 122),
                                  )),
                              Text(
                                DateFormat('yyyy/MM/dd - ')
                                    .format(state.daterange.start),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                              Text(
                                DateFormat('yyyy/MM/dd')
                                    .format(state.daterange.end),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
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
                      child: (state.expenseTransactionList.isEmpty)
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
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                )
                              ],
                            )
                          : PieChart(
                              getExpensepieChart(state.showfilterlist==false
                                  ? state.alltransaction
                                  : state.filtertransaction,
                              state.filteredExpensetransaction),
                            )),
                  if (state.expenseTransactionList.isEmpty)
                    const Text(
                      'Add data\'s to see  chartview',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  Container(
                    width: width * 0.9,
                    height: Height * 0.2,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return (state.expenseTransactionList.isEmpty)
                            ? Text('')
                            : ListTile(
                                leading: Icon(
                                  Icons.circle,
                                  color: colors[index],
                                ),
                                title: Text(sorted[index].typename),
                                trailing: Text(
                                    '${((sorted[index].amount / state.expenseamount.abs()) * 100).toStringAsFixed(1)}%'),
                              );
                      },
                      itemCount: sorted.length,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
