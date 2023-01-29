import 'package:community_app/feature/Provider/settings.dart';
import 'package:community_app/feature/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Glue the SettingsController to the MaterialApp.
    //
    // The AnimatedBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) => SettingsProvider()))
      ],
      builder: (context, child) {
        return Consumer<SettingsProvider>(
          builder: (context, settingsProvider, child) {
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                // Providing a restorationScopeId allows the Navigator built by the
                // MaterialApp to restore the navigation stack when a user leaves and
                // returns to the app after it has been killed while running in the
                // background.
                restorationScopeId: 'app',

                // Provide the generated AppLocalizations to the MaterialApp. This
                // allows descendant Widgets to display the correct translations
                // depending on the user's locale.
                // localizationsDelegates: const [
                //   AppLocalizations.delegate,
                //   GlobalMaterialLocalizations.delegate,
                //   GlobalWidgetsLocalizations.delegate,
                //   GlobalCupertinoLocalizations.delegate,
                // ],
                supportedLocales: const [
                  Locale('en', ''), // English, no country code
                ],

                // Use AppLocalizations to configure the correct application title
                // depending on the user's locale.
                //
                // The appTitle is defined in .arb files found in the localization
                // directory.
                // onGenerateTitle: (BuildContext context) =>
                //     AppLocalizations.of(context)!.appTitle,

                // Define a light and dark color theme. Then, read the user's
                // preferred ThemeMode (light, dark, or system default) from the
                // SettingsController to display the correct theme.
                theme: ThemeData(
                  primaryColor: Colors.blue,
                  scaffoldBackgroundColor: Colors.white,
                  cardColor: Colors.white,
                  indicatorColor: Colors.blue,
                  floatingActionButtonTheme:
                      const FloatingActionButtonThemeData(
                          backgroundColor: Color(0xFF2B6AD8)),
                  progressIndicatorTheme:
                      const ProgressIndicatorThemeData(color: Colors.blue),
                  colorScheme: const ColorScheme.light().copyWith(
                      background: Colors.white,
                      onSurface: Colors.black,
                      onSecondaryContainer: Colors.grey,
                      onPrimaryContainer: Colors.blueGrey),
                  primarySwatch: const MaterialColor(0xFF2B6FDB, <int, Color>{
                    50: Color(0xFF95b7ed),
                    100: Color(0xFF80a9e9),
                    200: Color(0xFF6b9ae6),
                    300: Color(0xFF558ce2),
                    400: Color(0xFF407ddf),
                    500: Color(0xFF2B6FDB),
                    600: Color(0xFF2764c5),
                    700: Color(0xFF2259af),
                    800: Color(0xFF1e4e99),
                    900: Color(0xFF1a4383),
                  }),
                  appBarTheme: const AppBarTheme(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      systemOverlayStyle: SystemUiOverlayStyle(
                          statusBarColor: Colors.transparent,
                          statusBarIconBrightness: Brightness.dark,
                          systemNavigationBarColor: Colors.black)),
                  textTheme: const TextTheme(),
                  toggleableActiveColor: Colors.blue,
                ),
                darkTheme: ThemeData.dark().copyWith(
                  primaryColor: Colors.blue,
                  scaffoldBackgroundColor: Colors.blueGrey,
                  cardColor: const Color(0xFF1A132F),
                  indicatorColor: Colors.blueAccent,
                  floatingActionButtonTheme:
                      const FloatingActionButtonThemeData(
                          backgroundColor: Color(0xFF2B6AD8)),
                  progressIndicatorTheme: const ProgressIndicatorThemeData(
                      color: Colors.lightBlueAccent),
                  colorScheme: const ColorScheme.light().copyWith(
                      background: Colors.blue,
                      onSurface: Colors.blue,
                      onSecondaryContainer: Colors.grey,
                      onPrimaryContainer: Colors.green),
                  appBarTheme: const AppBarTheme(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      systemOverlayStyle: SystemUiOverlayStyle(
                          statusBarColor: Colors.transparent,
                          statusBarIconBrightness: Brightness.light,
                          systemNavigationBarColor: Colors.white)),
                  toggleableActiveColor: Colors.blue,
                ),
                themeMode: settingsProvider.themeMode,

                // Define a function to handle named routes in order to support
                // Flutter web url navigation and deep linking.
                onGenerateRoute: (RouteSettings routeSettings) {
                  return MaterialPageRoute<void>(
                    settings: routeSettings,
                    builder: (BuildContext context) {
                      switch (routeSettings.name) {

                        // case DashBoard.routeName:
                        //   return const DashBoard();
                        // case SampleItemListView.routeName:
                        //   return const SampleItemListView();
                        default:
                          return DashBoard();
                      }
                    },
                  );
                });
          },
        );
      },
    );
  }
}
