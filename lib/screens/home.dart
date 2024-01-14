import 'package:flutter/material.dart';

import '../widgets/home/home_app_bar.dart';
import '../widgets/home/home_trending.dart';
import '../widgets/home/home_popular.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 25),
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
              height: 20,
            ),
            const HomeTrending(),
            const SizedBox(
              height: 20,
            ),
            const HomePopular(),
          ],
        ),
      ),
    );
  }
}
