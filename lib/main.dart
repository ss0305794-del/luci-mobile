import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luci_mobile/screens/home_screen.dart'; // استبدل المسار حسب شاشاتك

void main() {
  runApp(const LuciApp());
}

class LuciApp extends StatelessWidget {
  const LuciApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Luci Mobile',
      debugShowCheckedModeBanner: false,
      // ثيم أبل الرسمي (يدعم الوضع الداكن والفاتح تلقائياً)
      theme: CupertinoThemeData(
        brightness: Brightness.dark, // أو Light حسب رغبتك
        primaryColor: CupertinoColors.systemBlue,
        scaffoldBackgroundColor: CupertinoColors.systemGroupedBackground,
      ),
      home: HomeScreen(), // أول شاشة تعرضها
    );
  }
}
