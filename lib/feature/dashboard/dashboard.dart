import 'package:community_app/data/colors/colors.dart';
import 'package:community_app/feature/Provider/settings.dart';
import 'package:community_app/feature/call/view/call.dart';
import 'package:community_app/feature/contact/view/contact.dart';
import 'package:community_app/feature/message/view/message.dart';
import 'package:community_app/feature/settings/view/settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashBoard extends StatelessWidget {
  DashBoard({Key? key}) : super(key: key);

  final pages = [
    const MessageScreen(),
    const CallScreen(),
    const ContactScreen(),
    const SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SettingsProvider>(context);
    return Scaffold(
      body: pages[provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 5,
          backgroundColor: kWhite,
          selectedItemColor: kMainColor,
          unselectedItemColor: kGrey,
          selectedFontSize: 25,
          selectedIconTheme: const IconThemeData(
            size: 32,
          ),
          selectedLabelStyle: const TextStyle(fontSize: 10),
          unselectedLabelStyle: const TextStyle(color: kBlack),
          unselectedIconTheme: const IconThemeData(size: 28),
          currentIndex: provider.currentIndex,
          onTap: (value) {
            provider.currentIndex = value;
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_bubble_outline_rounded,
                ),
                label: 'Chat'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.call_rounded,
                ),
                label: 'Call'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.contact_page_rounded,
                ),
                label: 'Contact'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings_outlined,
                ),
                label: 'Settings'),
          ]),
    );
  }
}
