import 'package:flutter/material.dart';

// appcolor
var darkgreen = const Color.fromRGBO(26, 49, 48, 1);
var green = const Color.fromRGBO(37, 66, 67, 1);
var lightgreen = Color.fromARGB(255, 43, 84, 85);
var heading = const Text(
  'Money Pot',
  style: TextStyle(fontFamily: 'palette'),
);

// onboardscreen
String header1 = 'TRACK YOUR MONTHLY EXPENSE';
String header2 = 'SEE EVERYTHING IN ONE PLACE';
String header3 = 'PLAN FOR FINANCIAL GOALS!';
String para1 =
    'Manage Your Finance Doesn\'t Have To Be Challenging, Money Pot Makes It Effortless';
String para2 =
    'You Can Check Your Expense,Income And your Total Money Left Everything In One Place';
String para3 =
    'Start Managing Your Finance For a Better And More Organized Future';
var image1 = const AssetImage('lib/assets/onboard1.jpg');
var image2 = const AssetImage('lib/assets/onboard2.jpg');
var image3 = const AssetImage('lib/assets/onboard3.jpg');

//date
 DateTime date = DateTime.now();
class Date extends StatefulWidget {
  const Date({Key? key}) : super(key: key);

  @override
  State<Date> createState() => _DateState();
}

class _DateState extends State<Date> {
 
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(color: Colors.blue,
            onPressed: () async {
              DateTime? newdata = await showDatePicker(
                  context: context,
                  initialDate: date,
                  firstDate: DateTime(2000),
                  lastDate: DateTime.now());
              if (newdata == null) return;
              setState(() {
                date = newdata;
              });
            },
            icon: Icon(Icons.calendar_month)),
        Text(
          '${date.year}/${date.month}/${date.day}',
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}

