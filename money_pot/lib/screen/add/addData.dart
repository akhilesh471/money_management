import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spendee/constants/constants.dart';
import 'package:spendee/db/category/category_db.dart';
import 'package:spendee/db/transactions/transaction_db.dart';
import 'package:spendee/logic/bloc/category_bloc.dart';
import 'package:spendee/logic/transaction/bloc/transaction_bloc.dart';
import 'package:spendee/models/category/category.dart';
import 'package:spendee/models/transactions/transactions.dart';

String? _categoryid;
final formkey = GlobalKey<FormState>();

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
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Form(
                  key: formkey,
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
                              _amountTextEditingController, 'Enter the amount'),
                          SizedBox(
                            height: 20,
                          ),
                          addData('Notes', 'Notes ', TextInputType.text,
                              _notesTextEditingController, 'Enter the notes'),
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
                              BlocBuilder<CategoryBloc, CategoryState>(
                                builder: (context, state) {
                                  return DropdownButton(
                                    hint: Text('Select Category'),
                                    value: _categoryid,
                                    items: (_selectedCategoryType ==
                                                CategoryType.income
                                            ? state.categoryIncomeList
                                            : state.categoryExpenseList)
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
                                  );
                                },
                              ),
                            ],
                          ),
                      const    SizedBox(
                            height: 14,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                addTransaction();
                                _categoryid = null;

                                Navigator.of(context).pop();
                              }
                            },
                            child:const Text('Submit'),
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
      TextEditingController _controller, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(
            width: 198,
            child: TextFormField(
                validator: ((value) {
                  if (value == null || value.isEmpty) {
                    return text;
                  } else {
                    return null;
                  }
                }),
                controller: _controller,
                keyboardType: keyboard,
                decoration: InputDecoration(
                  hintText: hint,
                  border:const OutlineInputBorder(borderSide: BorderSide()),
                )))
      ],
    );
  }

  Future<dynamic> addTransaction() async {
    final _notesText = _notesTextEditingController.text;
    final _amountText = _amountTextEditingController.text;

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

    final _model = TransactionModel(
        id: DateTime.now().microsecond,
        notes: _notesText,
        amount: _parsedAmount,
        date: date,
        type: _selectedCategoryType!,
        category: _selectedCategoryModel!);
    context
        .read<TransactionBloc>()
        .add(TransactionEvent.addTransaction(model: _model));

    date = DateTime.now();
  }
}
