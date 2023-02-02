import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ROUTE NAVIGATION'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is "Home Screen"',
              style: TextStyle(fontSize: 26, color: Colors.blueGrey),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/home');
                },
                child: const Text('Go to Home')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/next_page');
                },
                child: const Text('Next Screen')),
          ],
        ),
      ),
    );
  }
}
