import 'package:flutter/material.dart';
import 'presentation/screens/layouts/mobile_screen_layout.dart';
import 'presentation/screens/layouts/responsive_layout.dart';
import 'presentation/screens/layouts/web_screen_layout.dart';
import 'util/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        // useMaterial3: true,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
