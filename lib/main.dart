import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_navigation_named_routes/home.dart';
import 'package:route_navigation_named_routes/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Navigation',
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(
          name: '/',
          page: () => const MyApp(),
        ),
        GetPage(
          name: '/home',
          page: () => const Home(),
        ),
        GetPage(
          name: '/next_page',
          page: () => const NextPage(),
          transition: Transition.leftToRight,
        ),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
