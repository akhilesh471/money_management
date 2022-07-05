import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spendee/constants/constants.dart';
import 'package:spendee/db/category/category_db.dart';
import 'package:spendee/logic/bloc/category_bloc.dart';
import 'package:spendee/models/category/category.dart';
import 'package:spendee/screen/category/category_pop.dart';
import 'package:spendee/screen/category/expense.dart';
import 'package:spendee/screen/category/income_cat.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
   
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: heading,
        backgroundColor: darkgreen,
        bottom: TabBar(
            controller: _tabController,
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
      body: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (context, state) {
          return TabBarView(
            controller: _tabController,
            children: [IncomeCat(), ExpenseCat()],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: green,
        child: Icon(
          Icons.add,
          size: 32,
        ),
        onPressed: () {
          popup(context);
          // if (a == 0) {
          //   print('incoem');
          // } else {
          //   print('expense');
          //   final _sample=CategoryModel(id: DateTime.now().millisecondsSinceEpoch.toString(), name: 'travel', type:CategoryType.income );
          // CategoryDb().insertCategory(_sample);

          // }
        },
      ),
    );
  }
}
