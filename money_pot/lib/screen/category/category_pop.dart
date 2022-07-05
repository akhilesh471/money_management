import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spendee/db/category/category_db.dart';
import 'package:spendee/logic/bloc/category_bloc.dart';
import 'package:spendee/models/category/category.dart';

ValueNotifier<CategoryType> selectedCategoryNotifier =
    ValueNotifier(CategoryType.income);
Future<void> popup(BuildContext context) async {
  final _textcontroller = TextEditingController();
  showDialog(
    context: context,
    builder: (ctx1) {
      return AlertDialog(
        title: const SizedBox(
            width: double.infinity,
            child: Text(
              'AddCategory',
              textAlign: TextAlign.center,
            )),
        actions: [
          TextField(
            controller: _textcontroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Category',
              hintStyle: TextStyle(color: Colors.amber),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                RadioButton(title: 'Income', type: CategoryType.income),
                RadioButton(title: 'Expense', type: CategoryType.expense),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                final _name = _textcontroller.text;
                if (_name.isEmpty) {
                  return;
                }
                final _category = CategoryModel(
                    id: DateTime.now().microsecondsSinceEpoch.toString(),
                    name: _name,
                    type: selectedCategoryNotifier.value);
                context
                    .read<CategoryBloc>()
                    .add(CategoryEvent.addCategoryEvent(model: _category));
              
                Navigator.of(ctx1).pop();
              },
              child: Text('Submit'))
        ],
      );
    },
  );
}

class RadioButton extends StatelessWidget {
  final String title;

  final CategoryType type;
  const RadioButton({Key? key, required this.title, required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ValueListenableBuilder(
            valueListenable: selectedCategoryNotifier,
            builder: (BuildContext ctx, CategoryType newCategory, Widget? _) {
              return Radio<CategoryType>(
                value: type,
                groupValue: newCategory,
                onChanged: (value) {
                  if (value == null) {
                    return;
                  }
                  selectedCategoryNotifier.value = value;
                  selectedCategoryNotifier.notifyListeners();
                },
              );
            }),
        Text(title),
      ],
    );
  }
}
