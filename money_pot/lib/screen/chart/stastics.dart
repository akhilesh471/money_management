import 'package:flutter/material.dart';
import 'package:spendee/constants/constants.dart';
import 'package:spendee/screen/chart/tab2.dart';
import 'package:spendee/screen/chart/tab1.dart';

class StasticsScreen extends StatelessWidget {
  const StasticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: heading,
          backgroundColor: darkgreen,
          bottom:  TabBar(
          
          indicator: BoxDecoration(borderRadius: BorderRadius.circular(50),color: lightgreen,),tabs: [
            Tab(
              text: 'INCOME',
            ),
            Tab(
              text: 'EXPENSE',
            ),
          ]),
        ),
        body: const TabBarView(
          children: [
            IncomeChart(),
            ExpenseChart(),
          ],
        ),
      ),
    );
  }
}
