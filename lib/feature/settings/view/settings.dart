import 'package:community_app/data/colors/colors.dart';
import 'package:community_app/data/constrains/theme/size_constraints.dart';
import 'package:community_app/feature/settings/widget/listtile.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Settings',
            style: TextStyle(
                fontSize: 25, color: kWhite, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            sHeight20,
            Container(
              height: height / 1.290,
              width: width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: kWhite),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Icon(Icons.minimize),
                    ),
                    sHeight10,
                    Row(
                      children: [
                        sWidth20,
                        const CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              'https://i.pinimg.com/736x/22/36/d1/2236d1ffd3d9fe1b64faff5780547aad.jpg'),
                        ),
                        sWidth20,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'John Wick',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Never Give Up',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, color: kGrey),
                            )
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.qr_code_rounded)),
                        sWidth20,
                      ],
                    ),
                    sHeight10,
                    const ListViewWidget(
                        icons: Icons.key_rounded,
                        title: 'Accounts',
                        subTitle: 'Privacy, security, change number'),
                    sHeight10,
                    const ListViewWidget(
                        icons: Icons.chat_bubble_outline_rounded,
                        title: 'Chat',
                        subTitle: 'Chat history, theme, wallpapers'),
                    sHeight10,
                    const ListViewWidget(
                        icons: Icons.notifications,
                        title: 'Notifications',
                        subTitle: 'Messages, group and others'),
                    sHeight10,
                    const ListViewWidget(
                        icons: Icons.help_outline_rounded,
                        title: 'Help',
                        subTitle: 'Help center,contact us, privacy policy'),
                    sHeight10,
                    const ListViewWidget(
                        icons: Icons.compare_arrows_rounded,
                        title: 'Storage and Data',
                        subTitle: 'Network usage, stogare usage'),
                    sHeight10,
                    const ListViewWidget(
                        icons: Icons.people_alt_outlined,
                        title: 'Invite a friend',
                        subTitle: ''),
                    sHeight10,
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
