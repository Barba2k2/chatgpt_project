import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'src/pages/Home_Page/chat_page.dart';
import 'src/pages/Initial_Page/initial_page.dart';

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
        primaryColorLight: Colors.black,
        primaryColorDark: Colors.white,
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChatPage(),
    );
  }
}

