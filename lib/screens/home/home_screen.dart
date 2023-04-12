import 'package:flutter/material.dart';

import '../../utils/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Allen'),
        leading: const Icon(Icons.menu),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: SizedBox(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTheme.firstSuggestionBoxColor,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
