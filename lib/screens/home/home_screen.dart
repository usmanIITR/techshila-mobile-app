import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/app_theme.dart';
import '../connect/connect_screen.dart';
import 'bloc/home_bloc.dart';

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
  final List<Map<String, String>> _availableDevices = [
    {
      'title': 'computer 1',
      'ipAddress': '192.0.8.xx',
    },
    {
      'title': 'computer 2',
      'ipAddress': '192.0.8.xx',
    },
    {
      'title': 'computer 3',
      'ipAddress': '192.0.8.xx',
    },
    {
      'title': 'computer 1',
      'ipAddress': '192.0.8.xx',
    },
    {
      'title': 'computer 2',
      'ipAddress': '192.0.8.xx',
    },
    {
      'title': 'computer 3',
      'ipAddress': '192.0.8.xx',
    },
    {
      'title': 'computer 1',
      'ipAddress': '192.0.8.xx',
    },
    {
      'title': 'computer 2',
      'ipAddress': '192.0.8.xx',
    },
    {
      'title': 'computer 3',
      'ipAddress': '192.0.8.xx',
    },
  ];
  bool _isExpanded = false;
  // final List<bool> _isExpandedList = [false, false, false];
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final padding = MediaQuery.of(context).viewPadding;
    height = height - padding.top - padding.bottom;
    return BlocConsumer<HomeScreenBloc, HomeScreenState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is HomeInitial) {
          return Scaffold(
            backgroundColor: AppTheme.whiteColor,
            appBar: AppBar(
              title: const Text('Tech-Shila'),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: SizedBox(
                height: height,
                width: width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      color: AppTheme.mainFontColor,
                      height: height * 0.08,
                      width: width * 0.4,
                      margin: EdgeInsets.symmetric(
                        vertical: height * 0.05,
                      ),
                      child: const Center(
                        child: Text(
                          'Available Devices',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppTheme.whiteColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: SizedBox(
                        height: _isExpanded ? height * 0.65 : height * 0.45,
                        width: width * 0.4,
                        child: Column(
                          children: [
                            Expanded(
                              child: SizedBox(
                                width: width * 0.4,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: _isExpanded
                                      ? _availableDevices.length
                                      : 2,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      height: height * 0.1,
                                      color: AppTheme.borderColor,
                                      margin: EdgeInsets.symmetric(
                                          vertical: height * 0.01),
                                      child: ListTile(
                                        onTap: () {},
                                        title: Text(
                                            _availableDevices[index]['title']!),
                                        subtitle: Text(_availableDevices[index]
                                            ['ipAddress']!),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isExpanded = !_isExpanded;
                                });
                              },
                              child: Container(
                                color: AppTheme.mainFontColor,
                                height: height * 0.08,
                                width: width * 0.4,
                                margin: EdgeInsets.symmetric(
                                  vertical: height * 0.05,
                                ),
                                child: Center(
                                  child: Text(
                                    _isExpanded ? 'Show Less' : 'Show more',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: AppTheme.whiteColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'New Device?',
                            style: TextStyle(
                                color: AppTheme.blackColor,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ConnectScreen(),
                              ),
                            );
                          },
                          child: Container(
                            color: AppTheme.mainFontColor,
                            height: height * 0.08,
                            width: width * 0.8,
                            margin: EdgeInsets.symmetric(
                              vertical: height * 0.005,
                            ),
                            child: const Center(
                              child: Text(
                                'Connect to new device',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppTheme.whiteColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
