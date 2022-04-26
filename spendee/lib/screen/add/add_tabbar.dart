import 'package:flutter/material.dart';
import 'package:spendee/constants/constants.dart';
import 'package:spendee/db/transactions/transaction_db.dart';
import 'package:spendee/screen/add/addData.dart';
import 'package:spendee/screen/add/expense.dart';
import 'package:spendee/screen/add/income.dart';
//TransactionModel model=TransactionModel(notes: ' ', amount: 4, date:DateTime.now(), type:CategoryType.expense,category: CategoryModel(id: '', name: '', type: CategoryType.expense));
// ValueNotifier<TransactionModel> datanotifier = ValueNotifier(model);
class AddScreen extends StatelessWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: heading,
          backgroundColor: darkgreen,
          bottom: TabBar(
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: lightgreen),
              tabs: [
                Tab(
                  text: 'INCOME',
                ),
                Tab(
                  text: 'EXPENSE',
                ),
              ]),
        ),
        body:  TabBarView(
          children: [
            AddIncome(),
            AddExpense(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            size: 32,
          ),
          onPressed: () {
            
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
              return AddIncomeExpense();
            }));
          },
        ),
      ),
    );
  }
}
