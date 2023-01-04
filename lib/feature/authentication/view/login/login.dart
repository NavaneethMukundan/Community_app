import 'package:community_app/data/colors/colors.dart';
import 'package:community_app/data/constrains/navigation/navigation.dart';
import 'package:community_app/data/constrains/theme/size_constraints.dart';
import 'package:community_app/feature/authentication/widget/textformfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kTransparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                popNavigation(context, widget);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: kBlack,
              )),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 18, left: 1),
                        child: Container(
                          height: 10,
                          width: 60,
                          color: Colors.green,
                        ),
                      ),
                      const Text(
                        'Login to N-TALKS',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5),
                      ),
                    ],
                  ),
                ),
                sHeight20,
                const Center(
                  child: Text(
                    'Welcome back! Sign in using your social\n         account or email to continue us',
                    style: TextStyle(
                        color: kGrey,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1),
                  ),
                ),
                sHeight40,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: kTransparent,
                      backgroundImage:
                          AssetImage('assets/Facebook_Logo_(2019).png.webp'),
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
                    sWidth20,
                    Text(
                      'OR',
                      style: TextStyle(color: kBlack, fontSize: 17),
                    ),
                    sWidth20,
                    Expanded(
                      child: Divider(
                        color: kGrey,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                sHeight30,
                const Text(
                  'Your Email',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 41, 99, 42)),
                ),
                const TextFormWidget(),
                sHeight20,
                sHeight30,
                const Text(
                  'Password',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 41, 99, 42)),
                ),
                const TextFormWidget(),
                sHeight50,
                sHeight50,
                sHeight30,
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1,
                    height: MediaQuery.of(context).size.height / 14,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 210, 208, 208),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                        child: Text(
                      'Log in',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    )),
                  ),
                ),
                sHeight10,
                Center(
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(
                            color: Color.fromARGB(255, 41, 99, 42),
                            fontSize: 15),
                      )),
                )
              ],
            ),
          ),
        )));
  }
}
