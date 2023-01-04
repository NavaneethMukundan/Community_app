import 'package:community_app/feature/run_app.dart';
import 'package:flutter/material.dart';

void main() async {
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.

  // WidgetsFlutterBinding.ensureInitialized();
  // Stripe.publishableKey =
  //     "pk_test_51M3zw3GTHCkXu3PUevaLbeR8nJoskBsk9xhdQVNH0RqJdK7bcBHXjpMfX9vBWY6nEHJxNj6UalVM27nIKZRVlcSk00TznqofaH";
  // await Firebase.initializeApp();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(const MyApp());
}
