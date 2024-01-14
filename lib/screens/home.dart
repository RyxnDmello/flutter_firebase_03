import 'package:flutter/material.dart';

import '../widgets/home/home_app_bar.dart';
import '../widgets/home/home_trending.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HomeAppBar(
              onOpenSearch: () {},
              onOpenSaved: () {},
              onOpenShare: () {},
            ),
            const SizedBox(
              height: 25,
            ),
            const HomeTrending(),
          ],
        ),
      ),
    );
  }
}
