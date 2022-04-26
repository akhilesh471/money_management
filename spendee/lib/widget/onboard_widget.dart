import 'package:flutter/material.dart';
import 'package:spendee/constants/constants.dart';

Widget onBoardWidget(context, String header, String para, AssetImage img) {
  return Container(
    color: darkgreen,
    child: Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
            color: green,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blue),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                  image: img,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding:const EdgeInsets.only(top: 15),
              child: Text(
                header,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            Padding(
              padding:const EdgeInsets.only(top: 15),
              child: Text(
                para,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    letterSpacing: 2,
                    height: 2),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
