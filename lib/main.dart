import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'src/Constants/constants.dart';
import 'src/Screens/Home_Page/chat_page.dart';
import 'src/Screens/Initial_Page/initial_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ChatGPT App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        appBarTheme: AppBarTheme(color: cardColor),
        primaryColorLight: Colors.black,
        primaryColorDark: Colors.white,
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChatPage(),
    );
  }
}

