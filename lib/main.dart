import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_provider.dart';
import 'package:provider/provider.dart';
import 'splash.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My Contacts",
        home: Splash(),
      ),
    );
  }
}
