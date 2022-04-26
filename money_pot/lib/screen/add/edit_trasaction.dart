// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:spendee/constants/constants.dart';
import 'package:spendee/db/category/category_db.dart';
import 'package:spendee/db/transactions/transaction_db.dart';
import 'package:spendee/models/category/category.dart';
import 'package:spendee/models/transactions/transactions.dart';

late DateTime editDate;
int? temp;


class editTransaction extends StatefulWidget {
   CategoryModel changedCategory;
  final notes;
  final amount;
  final date;
  final int id;
   CategoryType catType;

  editTransaction({
    Key? key,
    required this.id,
    required this.changedCategory,
    required this.amount,
    required this.date,
    required this.notes,
    required this.catType,
  }) : super(key: key);

  @override
  State<editTransaction> createState() => _ViewExpenseState();
}

class _ViewExpenseState extends State<editTransaction> {
  final _notesTextEditingController = TextEditingController();
  final _amountTextEditingController = TextEditingController();
 CategoryModel? _selectedCategoryModel;
 String? _categoryid;
 
  @override
  Widget build(BuildContext context1) {

    _notesTextEditingController.text = widget.notes;
    _amountTextEditingController.text = widget.amount.toString();
   
    print('intex in showpage${_selectedCategoryModel}');
    editDate = widget.date;
   
    return ValueListenableBuilder(
        valueListenable: TransactionDb.instance.expenseTransactionListNotifier,
        builder:
            (BuildContext ctx, List<TransactionModel> transaction, Widget? _) {
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
                    width: double.infinity,
                    child: Text(
                      'EDIT DATA',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 37),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 380,
                              child: Column(children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text('datebar',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    datebar()
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                addData(
                                    'Amount',
                                    'Amount',
                                    TextInputType.number,
                                    _amountTextEditingController),
                                SizedBox(
                                  height: 20,
                                ),
                                addData('Notes', 'Notes ', TextInputType.text,
                                    _notesTextEditingController),
                                SizedBox(
                                  height: 40,
                                ), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [ Text('Category',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    DropdownButton(
                                    hint: Text('${widget.changedCategory}'),
                                    value: _categoryid,
                                    items: ( widget.catType==
                                                CategoryType.income
                                            ? CategoryDb
                                                .instance.incomeCategoryListNotifier
                                            : CategoryDb.instance
                                                .expenseCategoryListNotifier)
                                        .value
                                        .map((e) {
                                      return DropdownMenuItem(
                                        value: e.id,
                                        child: Text(e.name),
                                        onTap: () {
                                          _selectedCategoryModel = e;
                                              print('intex in dropdown${_selectedCategoryModel}');
                                        },
                                      );
                                    }).toList(),
                                    onChanged: (selectedValue) {
                                      setState(() {
                                        _categoryid = selectedValue.toString();
                                        print('hello');
                                        print('category id is$_categoryid');
                                      });
                                    },
                              ),
                                  ],
                                ),
                             
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton.icon(
                                        onPressed: () {
                                          deletePopup(context);
                                        },
                                        icon: Icon(Icons.delete),
                                        label: Text('delete')),
                                    ElevatedButton.icon(
                                        onPressed: () {
                                          onSubmitButtonClick(widget.id);
                                          Navigator.of(context).pop();
                                        },
                                        label: Text('Submit'),
                                        icon: Icon(
                                          Icons.assignment_turned_in,
                                        )),
                                  ],
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )),
            ),
          );
        });
  }

  Row addData(String name, String hint, TextInputType keyboard,
      TextEditingController _controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(
            width: 198,
            child: TextFormField(
                controller: _controller,
                keyboardType: keyboard,
                decoration: InputDecoration(
                  hintText: hint,
                  border: OutlineInputBorder(borderSide: BorderSide()),
                )))
      ],
    );
  }

  Future<void> onSubmitButtonClick(int id) async {
    final _notes = _notesTextEditingController.text;
    final _amount = _amountTextEditingController.text;
    final _amt = double.parse(_amount);
    print(editDate);
    CategoryModel category=_selectedCategoryModel??widget.changedCategory;
    
    final model = TransactionModel(
        id: id,
        notes: _notes,
        amount: _amt,
        date: editDate,
        type: widget.catType,
        category: category);
    TransactionDb.instance.UpdateTransaction(model, id);
 
   TransactionDb.instance.getAllTransaction();
   TransactionDb.instance.refreshUitrans();
  }

  Future<void> deletePopup(BuildContext context) async {
    temp = 0;
    print('temp is $temp');
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            content: Text('Do you want to delete?'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('No'),
              ),
              TextButton(
                onPressed: () {
                  TransactionDb.instance.deleteTransaction(widget.id);
                  int count = 0;
Navigator.of(context).popUntil((_) => count++ >= 2);
                },
                child: Text('Yes'),
              )
            ],
          );
        });
  }
}

class datebar extends StatefulWidget {
  const datebar({Key? key}) : super(key: key);

  @override
  State<datebar> createState() => _DateState();
}

class _DateState extends State<datebar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            color: Colors.blue,
            onPressed: () async {
              DateTime? newdata = await showDatePicker(
                  context: context,
                  initialDate: editDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime.now());
              if (newdata == null) return;
              setState(() {
                editDate = newdata;
              });
            },
            icon: Icon(Icons.calendar_month)),
        Text(
          '${editDate.year}/${editDate.month}/${editDate.day}',
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
