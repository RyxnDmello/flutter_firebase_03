import 'package:flutter/material.dart';

class HomeUpcomingController extends StatelessWidget {
  const HomeUpcomingController({
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
    return TabPageSelector(
      selectedColor: const Color.fromARGB(255, 0, 0, 100),
      controller: TabController(
        initialIndex: activePage,
        length: pageLength,
        vsync: vsync,
      ),
    );
  }
}
