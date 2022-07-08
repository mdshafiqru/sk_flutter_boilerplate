// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../data/constants/app_string.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(APP_NAME),
      ),
      body: SafeArea(
        child: Center(
          child: Text('Dashboard view'),
        ),
      ),
    );
  }
}
