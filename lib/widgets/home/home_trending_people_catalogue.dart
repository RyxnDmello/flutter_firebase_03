import 'package:flutter/material.dart';

import '../../models/person_model.dart';

import './catalogue/catalogue_title.dart';

import './products/home_trending_person.dart';

class HomeTrendingPeopleCatalogue extends StatelessWidget {
  const HomeTrendingPeopleCatalogue({
    required this.people,
    super.key,
  });

  final List<PersonModel> people;

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
            title: "Trending People",
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 200,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: people.length,
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return HomeTrendingPerson(
                image: people[index].details.imageURI,
                profession: people[index].details.profession,
                popularity: people[index].details.popularity,
                name: people[index].details.name,
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 15,
              );
            },
          ),
        ),
      ],
    );
  }
}
