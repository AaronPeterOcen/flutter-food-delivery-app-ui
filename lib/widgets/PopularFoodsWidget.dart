// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class PopularFoodsWidget extends StatefulWidget {
  const PopularFoodsWidget({Key? key}) : super(key: key);

  @override
  _PopularFoodsWidgetState createState() => _PopularFoodsWidgetState();
}

class _PopularFoodsWidgetState extends State<PopularFoodsWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 265,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          PopularFoodTitle(),
          Expanded(
            child: PopularFoodItems(),
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class PopularFoodTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String rating;
  String numberOfRating;
  String price;
  String slug;

  PopularFoodTiles(
      {Key? key,
      required this.name,
      required this.imageUrl,
      required this.rating,
      required this.numberOfRating,
      required this.price,
      required this.slug})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Replace the overflowing Column with a constrained, flexible layout:
    return SizedBox(
      height: 226, // match parent constraint or tweak
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          // image area: expands to available space
          Expanded(
            flex: 6,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/popular_foods/' + imageUrl + ".png",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          // details area: expands and allows text to wrap/ellipsis
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Color(0xFF6e6e71),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '\$$price',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Color(0xFF6e6e71),
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PopularFoodTitle extends StatelessWidget {
  const PopularFoodTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Popular Foods",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w300),
          ),
          Text(
            "See all",
            style: TextStyle(
                fontSize: 16, color: Colors.blue, fontWeight: FontWeight.w100),
          )
        ],
      ),
    );
  }
}

class PopularFoodItems extends StatelessWidget {
  const PopularFoodItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        SizedBox(
          width: 180,
          child: PopularFoodTiles(
              name: "Fried Egg",
              imageUrl: "ic_popular_food_1",
              rating: '4.9',
              numberOfRating: '200',
              price: '15.06',
              slug: "fried_egg"),
        ),
        SizedBox(
          width: 180,
          child: PopularFoodTiles(
              name: "Mixed Vegetable",
              imageUrl: "ic_popular_food_3",
              rating: "4.9",
              numberOfRating: "100",
              price: "17.03",
              slug: ""),
        ),
        SizedBox(
          width: 180,
          child: PopularFoodTiles(
              name: "Salad With Chicken",
              imageUrl: "ic_popular_food_4",
              rating: "4.0",
              numberOfRating: "50",
              price: "11.00",
              slug: ""),
        ),
        SizedBox(
          width: 180,
          child: PopularFoodTiles(
              name: "Mixed Salad",
              imageUrl: "ic_popular_food_5",
              rating: "4.00",
              numberOfRating: "100",
              price: "11.10",
              slug: ""),
        ),
        SizedBox(
          width: 180,
          child: PopularFoodTiles(
              name: "Red meat,Salad",
              imageUrl: "ic_popular_food_2",
              rating: "4.6",
              numberOfRating: "150",
              price: "12.00",
              slug: ""),
        ),
        SizedBox(
          width: 180,
          child: PopularFoodTiles(
              name: "Mixed Salad",
              imageUrl: "ic_popular_food_5",
              rating: "4.00",
              numberOfRating: "100",
              price: "11.10",
              slug: ""),
        ),
        SizedBox(
          width: 180,
          child: PopularFoodTiles(
              name: "Potato,Meat fry",
              imageUrl: "ic_popular_food_6",
              rating: "4.2",
              numberOfRating: "70",
              price: "23.0",
              slug: ""),
        ),
        SizedBox(
          width: 180,
          child: PopularFoodTiles(
              name: "Fried Egg",
              imageUrl: "ic_popular_food_1",
              rating: '4.9',
              numberOfRating: '200',
              price: '15.06',
              slug: "fried_egg"),
        ),
        SizedBox(
          width: 180,
          child: PopularFoodTiles(
              name: "Red meat,Salad",
              imageUrl: "ic_popular_food_2",
              rating: "4.6",
              numberOfRating: "150",
              price: "12.00",
              slug: ""),
        ),
      ],
    );
  }
}
