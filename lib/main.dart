import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebasechat/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runZonedGuarded(
      () => {
            runApp(const GetMaterialApp(
              debugShowCheckedModeBanner: false,
              home: MainPage(),
            ))
          }, ((error, stack) {
    print("Something Went Wrong when running");
    print("Error -> $error");
  }));
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
