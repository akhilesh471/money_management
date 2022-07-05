import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:spendee/constants/constants.dart';
import 'package:spendee/db/category/category_db.dart';
import 'package:spendee/screen/home/home_page.dart';
import 'package:spendee/widget/onboard_widget.dart';
final key_value='loggdin';

class Hai extends StatefulWidget {
  Hai({Key? key}) : super(key: key);

  @override
  State<Hai> createState() => _HaiState();
}

class _HaiState extends State<Hai> {
  final controler = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkgreen,
        title: const Text(
          'Money Pot',
          style: TextStyle(fontFamily: 'palette'),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: controler,
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == 2;
            });
          },
          children: [
            onBoardWidget(context, header1, para1, image1),
            onBoardWidget(context, header2, para2, image2),
            onBoardWidget(context, header3, para3, image3),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  primary: Colors.white,
                  backgroundColor: darkgreen,
                  minimumSize: Size.fromHeight(80)),
              onPressed: () async{
                // CategoryDb.instance.defaultCategories();
                final prefs= await SharedPreferences.getInstance();
               prefs.setBool(key_value, true);
              

                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
                  
              },
              child: const Text(
                'GET STARTED',
                style: TextStyle(fontSize: 20),
              ))
          : Container(
              color: darkgreen,
              padding: const EdgeInsets.symmetric(horizontal: 0),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      controler.jumpToPage(2);
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controler,
                      count: 3,
                      effect: WormEffect(activeDotColor: green),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      controler.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                    },
                    child: const Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
