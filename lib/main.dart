import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:save/pages/Authauntication/signin.dart';
import 'package:save/pages/Authauntication/signup.dart';
import 'package:save/pages/admin/dasboard.dart';
import 'package:save/pages/admin/home.dart';
import 'package:save/pages/admin/loans.dart';
import 'package:save/pages/member/loan.dart';
import 'package:save/pages/admin/members.dart';
import 'package:save/pages/member/saving_history.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Save money earn health',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const HomeAdminPage(),
    );
  }
}
