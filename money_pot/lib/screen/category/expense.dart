import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spendee/db/category/category_db.dart';
import 'package:spendee/logic/bloc/category_bloc.dart';
import 'package:spendee/models/category/category.dart';

int? a;

class ExpenseCat extends StatelessWidget {
  const ExpenseCat({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    a = 1;
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return  GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 1),
                itemBuilder: ((context, index) {
                  final data = state.categoryExpenseList[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                data.name,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                               IconButton(
                                      onPressed: () {
                                        categoryDeletePopUP(context, data);
                                     
                                      },
                                      icon: Icon(
                                        Icons.delete_outlined,
                                      ))
                                  
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  );
                }),
                itemCount: state.categoryExpenseList.length,
              );
            });
    
  }
    Future<void> categoryDeletePopUP(
      BuildContext context, CategoryModel data,) async {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Text('Are you sure you want to delete this category?'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('NO')),
              TextButton(
                  onPressed: () {
             context.read<CategoryBloc>().add(CategoryEvent.deleteCategoryEvent(index: data.id));
                    Navigator.of(context).pop();
                  },
                  child: Text('YES'))
            ],
          );
        });
  }
}
