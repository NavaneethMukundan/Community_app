import 'package:community_app/feature/Provider/settings.dart';
import 'package:community_app/feature/call/view/call.dart';
import 'package:community_app/feature/contact/view/contact.dart';
import 'package:community_app/feature/message/view/message.dart';
import 'package:community_app/feature/settings/view/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:provider/provider.dart';

class DashBoard extends StatefulWidget {
  bool firstTime = false;

  DashBoard({Key? key, this.firstTime = false}) : super(key: key);
  static const String routeName = '/dashboard';

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  var isLoading = false;

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   getData();
  // }

  PersistentTabController controller = PersistentTabController(initialIndex: 0);
  double circleWidth = 40;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Consumer<SettingsProvider>(
        builder: (context, settingsProvider, snapshot) {
      // var userData = AuthProvider.userData;

      return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: PersistentTabView(
          context,
          controller: controller,
          screens: const [
            MessageScreen(),
            CallScreen(),
            ContactScreen(),
            SettingsScreen()
          ],
          items: [
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.home),
              title: 'Message',
              activeColorPrimary: Theme.of(context).primaryColor,
              inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.search),
              title: 'Call',
              activeColorPrimary: Theme.of(context).primaryColor,
              inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
            PersistentBottomNavBarItem(
              // icon: const ImageIcon(
              //   AssetImage(ImageRasterPath.recent),
              //   //
              // ),
              icon: const Icon(Icons.history),
              title: 'Contact',
              // iconSize: 100,
              activeColorPrimary: Theme.of(context).primaryColor,
              inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.settings),
              title: "Settings",
              activeColorPrimary: Theme.of(context).primaryColor,
              inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
          ],
          confineInSafeArea: true,
          backgroundColor: Colors.white,
          // Default is Colors.white.
          handleAndroidBackButtonPress: true,
          // Default is true.
          resizeToAvoidBottomInset: false,
          // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true,
          // Default is true.

          hideNavigationBarWhenKeyboardShows: true,
          // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(10.0),
            colorBehindNavBar: Colors.white,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties(
            // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation(
            // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle
              .style6, // Choose the nav bar style with this property.
        ),
      );
    });
  }
}

class DashBoardTile extends StatelessWidget {
  String image;
  String title;
  String subtitle;
  double value;

  DashBoardTile(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
            width: 122,
            height: 122,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onSecondaryContainer,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.white)),
            child: Image.asset(image)),
        SizedBox(
          width: size.width - 28 - 122,
          child: ListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            title: Text(title,
                style: GoogleFonts.nunito(
                    fontSize: 20, fontWeight: FontWeight.w600)),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(subtitle,
                    style: GoogleFonts.nunito(
                        fontSize: 16, fontWeight: FontWeight.w400)),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                    value: value,
                    minHeight: 20,
                    backgroundColor:
                        Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
