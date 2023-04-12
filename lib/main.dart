import 'package:flutter/material.dart';
import 'package:techshila/screens/home/home_screen.dart';
import 'package:techshila/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Allen',
      theme: ThemeData.light(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: AppTheme.whiteColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppTheme.whiteColor,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
