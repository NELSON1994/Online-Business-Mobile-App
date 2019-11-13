import 'package:ecommerce_flutter/screens/home.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal, //makes scroll to be horizontally
        children: <Widget>[
          Categories(
            image_location: 'images/shirt.jpg',
            image_caption: 'Shirts',

          ),
          Categories(
            image_location: 'images/sweater.jpg',
            image_caption: 'Sweater',
          ),
          Categories(
            image_location: 'images/shoes.jpg',
            image_caption: 'Shoes',
          ),
          Categories(
            image_location: 'images/sharpshooters.jpg',
            image_caption: 'Sharpshooters',
          ),
          Categories(
            image_location: 'images/jeans.jpg',
            image_caption: 'Jeans',
          ),
          Categories(
            image_location: 'images/khaki.jpg',
            image_caption: 'Khaki',
          ),
          Categories(
            image_location: 'images/tshirt.jpg',
            image_caption: 'T-Shirt',
          ),
          Categories(
            image_location: 'images/trenchcoat.jpg',
            image_caption: 'Trench',
          ),
          Categories(
            image_location: 'images/cap.jpg',
            image_caption: 'Cap',
          ),
          Categories(
            image_location: 'images/tvest.jpg',
            image_caption: 'T-Vest',
          ),
          Categories(
            image_location: 'images/skirts.jpg',
            image_caption: 'Skirt',
          ),
          Categories(
            image_location: 'images/dress.jpg',
            image_caption: 'Dress',
          ),
          Categories(
            image_location: 'images/highhills.jpg',
            image_caption: 'HighHills',
          ),
          Categories(
            image_location: 'images/boxer.jpg',
            image_caption: 'Boxers',
          ),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  final String image_location;
  final String image_caption;
  final old_price;
  //constructor
  Categories({this.image_caption, this.image_location ,this.old_price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
             subtitle: Container(
               alignment: Alignment.topCenter,
                 child: Text(image_caption)),

          //  subtitle: Text(image_caption),
          ),
        ),
      ),
    );
  }
}
