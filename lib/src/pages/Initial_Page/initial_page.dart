import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Login_Page/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 120,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Sing Up', style: Theme.of(context).textTheme.headline5),
                  ),
                ),
                const SizedBox(width: 15),
                SizedBox(
                  width: 120,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(const LoginScreen());
                    },
                    child: Text('Login', style: Theme.of(context).textTheme.headline5),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
