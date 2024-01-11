import 'package:flutter/material.dart';

import '../widgets/common/logo.dart';

import '../widgets/splash/splash_message.dart';
import '../widgets/splash/splash_loader.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "./lib/images/splash/background.png",
            ),
            fit: BoxFit.cover,
            opacity: 0.8,
          ),
          color: Colors.black,
        ),
        child: const SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: 20,
            top: 40,
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Logo(),
                SizedBox(
                  height: 240,
                ),
                SplashMessage(
                  message: "EXPLORE EVERY PIXEL",
                  quote: "Experience Visionary",
                ),
                SizedBox(
                  height: 25,
                ),
                SplashLoader(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
