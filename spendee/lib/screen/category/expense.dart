import 'package:flutter/material.dart';
import 'package:spendee/db/category/category_db.dart';
import 'package:spendee/models/category/category.dart';

int? a;

class ExpenseCat extends StatelessWidget {
  const ExpenseCat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    a = 1;
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: ValueListenableBuilder(
          valueListenable: CategoryDb().expenseCategoryListNotifier,
          builder: (BuildContext ctx, List<CategoryModel> newlist, Widget? _) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 1),
              itemBuilder: ((context, index) {
                final data = newlist[index];
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
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                            (index >= 3)
                                ? IconButton(
                                    onPressed: () {
                                      CategoryDb.instance
                                          .deleteCategory(data.id);
                                    },
                                    icon: Icon(
                                      Icons.delete_outlined,
                                    ))
                                : Icon(defaultExpenseIconCategory[index])
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
              itemCount: newlist.length,
            );
          }),
    );
  }
}
