import 'package:community_app/data/constrains/navigation/navigation.dart';
import 'package:community_app/feature/dashboard/splash_screen/onboarding.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gotoHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
            child: Image.asset(
          'assets/community_logo.png',
          height: 150,
        )),
        const Text(
          'N',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
        const Text(
          'TALKS',
          style: TextStyle(fontSize: 40),
        )
      ],
    ));
  }

  Future<void> gotoHome() async {
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) {
      return;
    }
    pushRemoveUntilNavigation(context, const OnBoardingPage());
  }
}
