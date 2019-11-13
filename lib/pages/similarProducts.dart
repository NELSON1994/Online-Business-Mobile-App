import 'package:ecommerce_flutter/pages/single_product.dart';
import 'package:flutter/material.dart';

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    // create map in the list
    {
      "name": "Skirts",
      "picture": "images/skirts.jpg",
      "old_price": 250,
      "price": 200,
    },
    {
      "name": "Shoters",
      "picture": "images/sharpshooters.jpg",
      "old_price": 1800,
      "price": 1650,
    },
    {
      "name": "Shirt",
      "picture": "images/shirt.jpg",
      "old_price": 500,
      "price": 250,
    },
    {
      "name": "Khaki",
      "picture": "images/khaki.jpg",
      "old_price": 400,
      "price": 350,
    },
    {
      "name": "Boxers",
      "picture": "images/boxer.jpg",
      "old_price": 100,
      "price": 200,
    },
    {
      "name": "HighHills",
      "picture": "images/highhills.jpg",
      "old_price": 1000,
      "price": 800,
    },
    {
      "name": "Jeans",
      "picture": "images/jeans.jpg",
      "old_price": 800,
      "price": 650,
    },
    {
      "name": "Dress",
      "picture": "images/dress.jpg",
      "old_price": 750,
      "price": 550,
    },
    {
      "name": "Sweater",
      "picture": "images/sweater.jpg",
      "old_price": 900,
      "price": 700,
    },
    {
      "name": "Cap",
      "picture": "images/cap.jpg",
      "old_price": 250,
      "price": 150,
    },
    {
      "name": "T-Shirt",
      "picture": "images/tshirt.jpg",
      "old_price": 500,
      "price": 350,
    },
    {
      "name": "T-Vest",
      "picture": "images/tvest.jpg",
      "old_price": 200,
      "price": 150,
    },
    {
      "name": "TrenchCoat",
      "picture": "images/trenchcoat.jpg",
      "old_price": 800,
      "price": 550,
    },
    {
      "name": "Shoes",
      "picture": "images/shoes.jpg",
      "old_price": 700,
      "price": 600,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length, // for the count of elements in the grid
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of columns in the grid
        ),
        itemBuilder: (BuildContext context, int index) {
          return Single_Product(
            //============passing the variables of the single products
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            product_newprice: product_list[index]['price'],
            product_oldprice: product_list[index]['old_price'],
          );
        });
  }
}
