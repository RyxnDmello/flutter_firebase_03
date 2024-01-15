import 'package:flutter/material.dart';

import '../models/listing_model.dart';

import '../widgets/home/home_app_bar.dart';
import '../widgets/home/home_trending.dart';
import '../widgets/home/home_upcoming.dart';
import '../widgets/home/home_popular.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeAppBar(
              onOpenSearch: () {},
              onOpenSaved: () {},
              onOpenShare: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            const HomeTrending(
              trending: trending,
            ),
            const SizedBox(
              height: 20,
            ),
            const HomeUpcoming(
              upcoming: upcoming,
            ),
            const SizedBox(
              height: 20,
            ),
            const HomePopular(
              popular: popular,
            ),
          ],
        ),
      ),
    );
  }
}
