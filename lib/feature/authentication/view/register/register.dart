import 'package:community_app/data/colors/colors.dart';
import 'package:community_app/data/constrains/navigation/navigation.dart';
import 'package:community_app/data/constrains/theme/size_constraints.dart';
import 'package:community_app/feature/authentication/widget/textformfield.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                        padding: const EdgeInsets.only(top: 15, left: 124),
                        child: Container(
                          height: 10,
                          width: 50,
                          color: Colors.green,
                        ),
                      ),
                      const Text(
                        'Sign up with Email',
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
                    'Get chatting with friends and family today by\n              signing up for our chat app!',
                    style: TextStyle(
                        color: kGrey,
                        fontSize: 15,
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
                  'Your Name',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 41, 99, 42)),
                ),
                const TextFormWidget(),
                sHeight30,
                const Text(
                  'Your Email',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 41, 99, 42)),
                ),
                const TextFormWidget(),
                sHeight30,
                const Text(
                  'Password',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 41, 99, 42)),
                ),
                const TextFormWidget(),
                sHeight30,
                const Text(
                  'Confirm Password',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 41, 99, 42)),
                ),
                const TextFormWidget(),
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
              ],
            ),
          ),
        )));
  }
}
