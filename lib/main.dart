import 'package:dummy/app/app.locator.dart';
import 'package:dummy/app/app.router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked_services/stacked_services.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCoSx5XKGGJ-k9Mo_P4tJDPRcUDJhUPlM4",
          appId: "1:214977880251:android:51205588379310450ec99e",
          messagingSenderId: "214977880251",
          projectId: "dumy-507a9"));
  setupLocator();


  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
initialRoute:  Routes.startupScreen,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [StackedService.routeObserver],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: Theme.of(context).appBarTheme,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),

    );
  }

}

