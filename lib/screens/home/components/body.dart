import 'package:demo/constants.dart';
import 'package:flutter/material.dart';
import 'featurred_plants.dart';
import 'header_with_seachbox.dart';
import 'recomend_plants.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provide us the total height and width of our screen
    Size size = MediaQuery.of(context).size;
    // It enables scrolling on small devices
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size, key: UniqueKey()),
          TitleWithMoreBtn(title: "Recommended", press: () {}),
          RecomendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          const SizedBox(
              height: kDefaultPadding), // Use const here for performance
        ],
      ),
    );
  }
}
