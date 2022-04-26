import 'package:flutter/material.dart';
import 'package:spendee/db/transactions/transaction_db.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
//mport 'package:url_launcher/url_launcher.dart';


List<IconData> icn = [
  Icons.notifications_active_outlined,
  Icons.refresh_sharp,
  Icons.share,
  Icons.support_agent_rounded,
  Icons.privacy_tip_outlined,
  Icons.info
];

List<String> settingstitle = [
  'Notification',
  'Reset',
  'Share',
  'Help & Support',
  'Privacy & Policy',
  'About',
];

Future<void> resetPopBox(BuildContext context) async {
  showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: Text('do you want to reset all the data?'),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('No'),
                ),
                TextButton(
                  onPressed: () {
                    TransactionDb.instance.clearData();
                    Navigator.of(context).pop();
                  },
                  child: Text('yes'),
                ),
              ],
            ),
          ],
        );
      });
}

Future<void> helpAndSupport() async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: 'akhileshakhi887@gmail.com',
    // queryParameters: {'subject': 'Default Subject', 'body': 'Default body'});
  );
  String url = params.toString();
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    print('Could not launch $url');
  }
}

Future<dynamic> about(BuildContext context) async {
   showAboutDialog(
context: context,
applicationIcon: Image(image: AssetImage('lib/assets/mainlogo.png'),height: 38,width:30),
applicationLegalese: "© 2022 company",
applicationName: "Money Pot",
applicationVersion: "version 1.1.0",


  );
}


