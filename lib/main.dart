import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:healthapp/firebase_options.dart';
import 'package:healthapp/pages/main_page.dart';
import 'package:healthapp/pages/page1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      //home: MainPage(),
    );
  }
}
