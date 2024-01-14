import 'package:flutter/material.dart';

class HomeTrendingController extends StatelessWidget {
  const HomeTrendingController({
    required this.activePage,
    required this.pageLength,
    required this.vsync,
    super.key,
  });

  final TickerProvider vsync;
  final int activePage;
  final int pageLength;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TabPageSelector(
          selectedColor: const Color.fromARGB(255, 0, 0, 100),
          controller: TabController(
            initialIndex: activePage,
            length: pageLength,
            vsync: vsync,
          ),
        ),
      ],
    );
  }
}
