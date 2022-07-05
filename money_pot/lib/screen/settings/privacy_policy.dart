import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:spendee/constants/constants.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  String textFormFile = '';
  getData() async {
    String response;
    response = await rootBundle.loadString('textdocument/spendeetext.txt');
    setState(() {
      textFormFile = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: green,
          title:const Text('Privacy&Policy'),
        ),
        body: SingleChildScrollView(
            child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(textFormFile),
          ),
        )));
  }
}
