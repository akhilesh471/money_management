import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:spendee/constants/constants.dart';
import 'package:spendee/screen/add/add_tabbar.dart';
import 'package:spendee/screen/category/category.dart';
import 'package:spendee/screen/settings/settings.dart';
import 'package:spendee/screen/chart/stastics.dart';
import 'package:spendee/screen/home/transaction.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
  
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;
  final screen=[TransactionScreen(),StasticsScreen(),AddScreen(),CategoryScreen(),SettingsScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: green,
        index: selectedindex,
        items: [
          navicons(Icons.home),
          navicons(Icons.pie_chart_rounded),
          navicons(Icons.add_box),
          navicons(Icons.category_rounded),
          navicons(Icons.settings),
        ],onTap: (index){
        setState(() {
            selectedindex=index;
        });
          },
      ),
      body: screen[selectedindex],
    );
  }

  Icon navicons(IconData icn) {
    return Icon(icn,
          size: 30,
        );
}
}
