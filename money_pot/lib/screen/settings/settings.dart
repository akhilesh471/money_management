import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spendee/constants/constants.dart';
import 'package:spendee/db/transactions/transaction_db.dart';
import 'package:spendee/screen/settings/notification.dart';
import 'package:spendee/screen/settings/privacy_policy.dart';
import 'package:spendee/screen/settings/settings_constants.dart';

String notification_Key = 'Notification';
bool? status;
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}
class _SettingsScreenState extends State<SettingsScreen> {
  @override
  showNotification(bool state) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(notification_Key, state);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
   
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: heading,
        backgroundColor: darkgreen,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.5,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                        onTap: () {
                          switchFunction(index, context);
                        },
                        leading: Icon(
                          icn[index],
                          color: Colors.black,
                        ),
                        title: Text(
                          settingstitle[index],
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        trailing: (index == 0)
                            ? Switch(
                                value: status!,
                                onChanged: (value) {
                                  setState(() {
                                    status = value;
                                    showNotification(status!);
                                    print('jndfnd$status');
                                    if (status == true) {
                                      notification("Hello.............. ",
                                          "Its time to add today's transactions");
                                    } else {
                                      cancelNotification();
                                    }
                                  });
                                },
                                activeTrackColor: lightgreen,
                                activeColor: Colors.green,
                              )
                            : null);
                  },
                  itemCount: 6,
                ),
              ),
              Container(
                height: height * 0.3,
                child: Center(
                    child: Text(
                  'Version 1.0.3',
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

switchFunction(int index, BuildContext context) {
  switch (index) {
    case 0:
      print('case 0');
      break;
    case 1:
      resetPopBox(context);
      break;
    case 2:
      Share.share(
        'https://play.google.com/store/apps/details?id=in.brototype.money_pot',
      );
      break;
    case 3:
      helpAndSupport();
      break;
    case 4:
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return PrivacyPolicy();
      }));
      break;
    case 5:
      about(context);
      break;
  }
}

getNotification() async {
  final prefs = await SharedPreferences.getInstance();
  status = await prefs.getBool(notification_Key) ?? false;
  print('kmmlg$status');
}
