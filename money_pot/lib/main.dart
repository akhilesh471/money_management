import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spendee/functions/chart_function.dart';
import 'package:spendee/logic/bloc/category_bloc.dart';
import 'package:spendee/logic/transaction/bloc/transaction_bloc.dart';

import 'package:spendee/models/category/category.dart';
import 'package:spendee/models/transactions/transactions.dart';
import 'package:spendee/screen/settings/settings.dart';
import 'package:spendee/screen/splash_onboard_screen/on_board_screen.dart';

import 'package:spendee/screen/splash_onboard_screen/splash_screen.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  if (!Hive.isAdapterRegistered(CategoryTypeAdapter().typeId)) {
    Hive.registerAdapter(CategoryTypeAdapter());
  }
  if (!Hive.isAdapterRegistered(CategoryModelAdapter().typeId)) {
    Hive.registerAdapter(CategoryModelAdapter());
  }
  if (!Hive.isAdapterRegistered(TransactionModelAdapter().typeId)) {
    Hive.registerAdapter(TransactionModelAdapter());
  }
  final x = await getHomeScreen();
  runApp(MyApp(value: x));
}

class MyApp extends StatelessWidget {
  final value;
  MyApp({Key? key, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getNotification();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CategoryBloc(),
        ),
        BlocProvider(
          create: (context) => TransactionBloc(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              //   textTheme: TextTheme(bodyText1: TextStyle(fontSize: 10),
              // bodyLarge: TextStyle(fontSize: 10),
              // headline1: TextStyle(fontSize: 10),
              // headline2: TextStyle(fontSize: 10),
              // headline3: TextStyle(fontSize: 10),
              // headline4: TextStyle(fontSize: 10),
              // headline5: TextStyle(fontSize: 10),
              // headline6: TextStyle(fontSize: 10),
              // bodyMedium: TextStyle(fontSize: 10),
              // bodyText2: TextStyle(fontSize: 10),

              // )
              ),
          home: SplashScreen(
            value: value,
          )),
    );
  }
}
