import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:spendee/constants/constants.dart';
import 'package:spendee/db/transactions/transaction_db.dart';
import 'package:spendee/models/transactions/transactions.dart';
import 'package:spendee/screen/add/edit_trasaction.dart';


class AddIncome extends StatelessWidget {
  const AddIncome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TransactionDb.instance.refreshUitrans();

    return Container(
      color: lightgreen,
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.only(top: 8),
        child: ValueListenableBuilder(
          valueListenable: TransactionDb().incomeTransactionListNotifier,
          builder:
              (BuildContext ctx, List<TransactionModel> newlist, Widget? _) {
            return newlist.isEmpty
                  ? Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Icon(FontAwesomeIcons.fileCircleXmark,color: Colors.white,
                    size: 80,),
                      Text(
                          'No data found',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                    ],
                  )
                  :
             ListView.builder(
              itemCount: newlist.length,
              itemBuilder: ((context, index) {
                final data = newlist[index];
                return Padding(
                    padding: EdgeInsets.only(left: 9.0, right: 9, top: 4),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (ctx) {
                          return editTransaction(id: data.id, changedCategory: data.category, amount: data.amount, date: data.date, notes: data.notes, catType: data.type);
                        }));
                      },
                      child: Card(
                        child: ListTile(
                          leading: Text(
                            parsedate(data.date),style: TextStyle(color: Colors.blue),
                        
                      
                          ),
                          title: Text(
                            data.category.name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(data.notes),
                          trailing: Text('+ ₹${data.amount.toString()}',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 5, 175, 62),
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                    ));
              }),
            );
          },
        ),
      ),
    );
  }
  String parsedate(DateTime date) {
  var format = DateFormat.MMMd();
var dateString = format.format(date);
final _split=dateString.split(' ');
return '${_split.last}-${_split.first}';
  }
}
