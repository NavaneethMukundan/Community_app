import 'package:community_app/data/colors/colors.dart';
import 'package:community_app/data/constrains/navigation/navigation.dart';
import 'package:community_app/data/constrains/theme/size_constraints.dart';
import 'package:community_app/feature/authentication/view/login/login.dart';
import 'package:community_app/feature/authentication/view/register/register.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              colors: [
            Colors.black,
            Color.fromARGB(255, 54, 30, 86),
            Color.fromARGB(255, 44, 24, 70),
            Colors.black,
            Colors.black
          ])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/community_logo.png',
                        height: 80,
                      ),
                    ),
                    sHeight10,
                    const Text(
                      'Connect\nfriends',
                      style: TextStyle(
                          color: kWhite,
                          fontSize: 65,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.5),
                    ),
                    const Text(
                      'easily &\nquickly',
                      style: TextStyle(
                          color: kWhite,
                          fontSize: 65,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5),
                    ),
                    sHeight20,
                    const Text(
                      'Our chat app is the perfect way to stay connected with friends and family.',
                      style: TextStyle(
                          color: kGrey,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                    sHeight40,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: kTransparent,
                          backgroundImage: AssetImage(
                              'assets/Facebook_Logo_(2019).png.webp'),
                        ),
                        sWidth10,
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: kTransparent,
                          backgroundImage: AssetImage(
                              'assets/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png'),
                        ),
                        sWidth10,
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: kTransparent,
                          backgroundImage: AssetImage('assets/Apple-logo.png'),
                        ),
                        sWidth10,
                      ],
                    ),
                    sHeight20,
                    Row(
                      children: const [
                        Expanded(
                          child: Divider(
                            color: kGrey,
                            thickness: 1,
                          ),
                        ),
                        sWidth10,
                        Text(
                          'OR',
                          style: TextStyle(color: kWhite, fontSize: 18),
                        ),
                        sWidth10,
                        Expanded(
                          child: Divider(
                            color: kGrey,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    sHeight30,
                    GestureDetector(
                      onTap: () {
                        pushNavigation(context, const LoginScreen());
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1,
                        height: MediaQuery.of(context).size.height / 14,
                        decoration: BoxDecoration(
                            color: kWhite,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                            child: Text(
                          'Sign up with mail',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        )),
                      ),
                    ),
                    sHeight10,
                    Center(
                      child: TextButton(
                          onPressed: () {
                            pushNavigation(context, const RegisterScreen());
                          },
                          child: const Text(
                            'Existing account? Log in',
                            style: TextStyle(color: kWhite, fontSize: 15),
                          )),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
