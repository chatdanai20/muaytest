import 'package:demo/constants.dart';
import 'package:flutter/material.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(
            key: UniqueKey(), // Provide a unique key here
            title: "Angelica",
            country: "Russia",
            price: 440,
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              Container(
                width: size.width / 2,
                height: 84,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                  ),
                  color: kPrimaryColor,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Description",
                    style: TextStyle(
                      color: kTextLightColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
