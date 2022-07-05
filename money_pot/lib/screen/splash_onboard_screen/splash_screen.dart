import 'package:flutter/material.dart';
import 'package:spendee/screen/home/home_page.dart';
import 'package:spendee/screen/splash_onboard_screen/on_board_screen.dart';

class SplashScreen extends StatefulWidget {
  final value;
  SplashScreen({Key? key, this.value}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    CheckUserLogedIn();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: double.infinity,
      child: Image.asset(
        'lib/assets/splashimage.png',
        fit: BoxFit.cover,
      ),
    ));
  }

  Future<void> goto() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (ctx) => HomeScreen()));
  }

  Future<void> CheckUserLogedIn() async {
    if (widget.value == true) {
      goto();
    } else {
      await Future.delayed(Duration(seconds: 3));
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx) => Hai(),
        ),
      );
    }
  }
}









//  @override
//   Widget build(BuildContext context) { 
//     return Scaffold(
//       body: SafeArea(
//         child: AnimatedSplashScreen(
//           nextScreen: value! ? HomeScreen() : Hai() ,
        
//           splash: SizedBox(
//             height: 400,
//             width: 400,
//             child: Image.asset(
//               'lib/assets/moneypot6.png',
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }