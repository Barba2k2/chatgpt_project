import 'package:chatgpt_project/src/Providers/models_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'src/Constants/constants.dart';
import 'src/Screens/Home_Page/chat_sceen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ModelsProvider(),
        ),
      ],
      child: GetMaterialApp(
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
        home: const ChatScreen(),
      ),
    );
  }
}
