import 'package:book_grocer/common/color_extenstion.dart';
import 'package:book_grocer/view/main_tab/main_tab_view.dart';
import 'package:book_grocer/view/onboarding/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart'; // ✅ Add this

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book UI App',
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true, // ✅ Required for DevicePreview
      locale: DevicePreview.locale(context), // ✅
      builder: DevicePreview.appBuilder, // ✅
      theme: ThemeData(
        primaryColor: TColor.primary,
        fontFamily: 'SF Pro Text',
      ),
      home: const MainTabView(),
    );
  }
}
