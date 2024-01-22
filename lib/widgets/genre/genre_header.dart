import 'package:flutter/material.dart';

import './header/genre_app_bar.dart';
import './header/genre_header_search.dart';

class GenreHeader extends StatelessWidget {
  const GenreHeader({
    required this.onDefault,
    required this.onSearch,
    required this.onBack,
    super.key,
  });

  final void Function({required String search}) onSearch;
  final void Function() onDefault;
  final void Function() onBack;

  @override
  Widget build(BuildContext context) {
    void search({required String? value}) {
      if (value == null || value.isEmpty) {
        onDefault();
        return;
      }

      onSearch(
        search: value,
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 0, 0, 25),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            offset: Offset(0, 5),
            blurRadius: 10,
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GenreAppBar(
              onBack: onBack,
            ),
            const SizedBox(
              height: 15,
            ),
            GenreHeaderSearch(
              onSearch: search,
            ),
          ],
        ),
      ),
    );
  }
}
