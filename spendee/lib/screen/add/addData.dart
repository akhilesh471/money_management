import 'package:flutter/material.dart';
import 'package:spendee/constants/constants.dart';
import 'package:spendee/db/category/category_db.dart';
import 'package:spendee/db/transactions/transaction_db.dart';
import 'package:spendee/models/category/category.dart';
import 'package:spendee/models/transactions/transactions.dart';

String? _categoryid;

class AddIncomeExpense extends StatefulWidget {
  const AddIncomeExpense({Key? key}) : super(key: key);

  @override
  State<AddIncomeExpense> createState() => _ViewExpenseState();
}

class _ViewExpenseState extends State<AddIncomeExpense> {
  CategoryType? _selectedCategoryType;
  CategoryModel? _selectedCategoryModel;
  final _notesTextEditingController = TextEditingController();
  final _amountTextEditingController = TextEditingController();
  @override
  void initState() {
    _selectedCategoryType = CategoryType.income;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                'ADD DATA',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Date',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 8,
                              ),
                              Date()
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          addData('Amount', 'Amount', TextInputType.number,
                              _amountTextEditingController),
                          SizedBox(
                            height: 20,
                          ),
                          addData('Notes', 'Notes ', TextInputType.text,
                              _notesTextEditingController),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text('CategoryType',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 25,
                              ),
                              chooseCategory('Income', CategoryType.income),
                              chooseCategory('Expense', CategoryType.expense),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Category',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              DropdownButton(
                                hint: Text('Select Category'),
                                value: _categoryid,
                                items: (_selectedCategoryType ==
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
                                    },
                                  );
                                }).toList(),
                                onChanged: (selectedValue) {
                                  setState(() {
                                    _categoryid = selectedValue.toString();
                                  });
                                },
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              addTransaction();
                              _categoryid = null;

                              Navigator.of(context).pop();
                            },
                            child: Text('Submit'),
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
  }

  Row chooseCategory(String text, CategoryType type) => Row(
        children: [
          Radio(
              value: type,
              groupValue: _selectedCategoryType,
              onChanged: (newvalue) {
                setState(() {
                  _selectedCategoryType = type;
                  _categoryid = null;
                });
              }),
          Text(text)
        ],
      );

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

  Future<void> addTransaction() async {
    final _notesText = _notesTextEditingController.text;
    final _amountText = _amountTextEditingController.text;
    if (_amountText.isEmpty) {
      return;
    }
    if (_notesText.isEmpty) {
      return;
    }
    if (_categoryid == null) {
      return;
    }
    if (_selectedCategoryModel == null) {
      return;
    }

    final _parsedAmount = double.tryParse(_amountText);
    if (_parsedAmount == null) {
      return;
    }

    final _model = TransactionModel(id: DateTime.now().microsecond,
        notes: _notesText,
        amount: _parsedAmount,
        date: date,
        type: _selectedCategoryType!,
        category: _selectedCategoryModel!);
        
    TransactionDb.instance.addTransaction(_model);
    TransactionDb.instance.refreshUitrans();
    date=DateTime.now();
  }
}
