import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:spendee/constants/constants.dart';
import 'package:spendee/db/transactions/transaction_db.dart';
import 'package:spendee/logic/bloc/category_bloc.dart';
import 'package:spendee/logic/transaction/bloc/transaction_bloc.dart';
import 'package:spendee/screen/home/transactionwidget.dart';
import 'package:spendee/widget/droopdownbox.dart';
import 'package:spendee/widget/search_bar.dart';

DateTimeRange dateRange = DateTimeRange(
  start: DateTime.now().subtract(
    const Duration(days: 4),
  ),
  end: DateTime.now(),
);
final startDay = dateRange.start.subtract(const Duration(days: 1));
final lastDay = dateRange.end.add(const Duration(days: 1));

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);
  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  void initState() {
    super.initState();
    context.read<TransactionBloc>().add(
          const TransactionEvent.seperateTransaction(),
        );
    context.read<CategoryBloc>().add(CategoryEvent.seperateCategoryEvent());
  }

  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkgreen,
        title: heading,
      ),
      body: SingleChildScrollView(
          child: BlocBuilder<TransactionBloc, TransactionState>(
        builder: (context, state) {
          return SafeArea(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                  style: const TextStyle(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Colors.blueGrey),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Icon(
                                  Icons.arrow_circle_up_outlined,
                                  color: Color.fromARGB(255, 2, 180, 8),
                                  size: 30,
                                ),
                                Text(
                                  '${state.incomeamount}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 2, 180, 8)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Colors.blueGrey),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Icon(
                                  Icons.arrow_circle_down_outlined,
                                  color: Colors.red,
                                  size: 30,
                                ),
                                Text(
                                  '-${state.expenseamount}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Colors.blueGrey),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'Total',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  '${state.totalamount}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          )
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
                height: MediaQuery.of(context).size.height * 0.52,
                width: double.infinity,
                child: BlocBuilder<TransactionBloc, TransactionState>(
                  builder: (context, state) {
                    return (state.showfilterlist)
                        ? state.filtertransaction.isEmpty
                            ? Nodatafound()
                            : TransactionWidget(
                                length: state.filtertransaction.length,
                                value: state.filtertransaction)
                        : state.alltransaction.isEmpty
                            ? Nodatafound()
                            : TransactionWidget(
                                length: state.alltransaction.length,
                                value: state.alltransaction);
                  },
                ),
              )
            ],
          ));
        },
      )),
    );
  }
}
