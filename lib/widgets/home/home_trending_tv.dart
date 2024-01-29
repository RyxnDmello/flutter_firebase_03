import 'package:flutter/material.dart';

import '../../models/catalogue/catalogue_product_model.dart';

import './catalogue/catalogue_title.dart';
import './catalogue/catalogue_tabs.dart';

import './series/home_trending_series.dart';

class HomeTrendingTV extends StatefulWidget {
  const HomeTrendingTV({
    required this.trending,
    super.key,
  });

  final List<CatalogueProductModel> trending;

  @override
  State<HomeTrendingTV> createState() => _HomeTrendingTVState();
}

class _HomeTrendingTVState extends State<HomeTrendingTV>
    with TickerProviderStateMixin {
  int _activePage = 0;

  void _onPageChanged(int nextPage) {
    setState(() => _activePage = nextPage);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            right: 15,
            left: 15,
          ),
          child: CatalogueTitle(
            title: "Trending Series",
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 350,
          child: PageView.builder(
            itemCount: widget.trending.length,
            onPageChanged: _onPageChanged,
            itemBuilder: (context, index) {
              return HomeTrendingSeries(
                title: widget.trending[index].title,
                genre: widget.trending[index].genre,
                rating: widget.trending[index].rating,
                image: widget.trending[index].imageURI,
                onSelectTV: () async {},
              );
            },
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CatalogueTabs(
              pageLength: widget.trending.length,
              activePage: _activePage,
              vsync: this,
            ),
          ],
        ),
      ],
    );
  }
}
