import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techshila/screens/home/home_screen.dart';

import '../screens/home/bloc/home_bloc.dart';
import 'app_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigateToHomeScreen();
    super.initState();
  }

  _navigateToHomeScreen() async {
    await Future.delayed(
      const Duration(
        milliseconds: 1500,
      ),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (context) => HomeScreenBloc(),
              child: const HomeScreen(),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.whiteColor,
      body: Center(
        child: Image.asset(
          'assetName',
          errorBuilder: (context, object, st) {
            return const SizedBox(
              child: Text('Error Occured'),
            );
          },
        ),
      ),
    );
  }
}
