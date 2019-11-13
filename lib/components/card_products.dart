import 'package:ecommerce_flutter/components/single_cart_product.dart';
import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    //will need name, picture and price,size,color,quantity only

    {
      "name": "Skirts",
      "picture": "images/skirts.jpg",
      "price": 200,
      "size": "L",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Shoters",
      "picture": "images/sharpshooters.jpg",
      "price": 1650,
      "size": "M",
      "color": "Black",
      "quantity": 1,
    }
//    {
//      "name": "Shirt",
//      "picture": "images/shirt.jpg",
//      "price": 250,
//"size": "M",
//"color": "Black",
//"quantity":1,
//    },
//    {
//      "name": "Khaki",
//      "picture": "images/khaki.jpg",
//      "price": 350,
    //"size": "M",
//"color": "Black",
//"quantity":1,
//    },
//    {
//      "name": "Boxers",
//      "picture": "images/boxer.jpg",
//      "price": 200,
    //"size": "M",
//"color": "Black",
//"quantity":1,
//    },
//    {
//      "name": "HighHills",
//      "picture": "images/highhills.jpg",
//      "price": 800,
    //"size": "M",
//"color": "Black",
//"quantity":1,
//    },
//    {
//      "name": "Jeans",
//      "picture": "images/jeans.jpg",
//      "price": 650,
    //"size": "M",
//"color": "Black",
//"quantity":1,
//    },
//    {
//      "name": "Dress",
//      "picture": "images/dress.jpg",
//      "price": 550,
    //"size": "M",
//"color": "Black",
//"quantity":1,
//    },
//    {
//      "name": "Sweater",
//      "picture": "images/sweater.jpg",
//      "price": 700,
    //"size": "M",
//"color": "Black",
//"quantity":1,
//    },
//    {
//      "name": "Cap",
//      "picture": "images/cap.jpg",
//      "price": 150,
    //"size": "M",
//"color": "Black",
//"quantity":1,
//    },
//    {
//      "name": "T-Shirt",
//      "picture": "images/tshirt.jpg",
//      "price": 350,
    //"size": "M",
//"color": "Black",
//"quantity":1,
//    },
//    {
//      "name": "T-Vest",
//      "picture": "images/tvest.jpg",
//      "price": 150,
    //"size": "M",
//"color": "Black",
//"quantity":1,
//    },
//    {
//      "name": "TrenchCoat",
//      "picture": "images/trenchcoat.jpg",
//      "price": 550,
    //"size": "M",
//"color": "Black",
//"quantity":1,
//    },
//    {
//      "name": "Shoes",
//      "picture": "images/shoes.jpg",
//      "price": 600,
    //"size": "M",
//"color": "Black",
//"quantity":1,
//    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Products_on_the_cart.length,
      //returning no of items on the list
      itemBuilder: (context, index) {
        //====returning the single cart product file class
        return Single_cart_product(
          cart_product_name: Products_on_the_cart[index]["name"],
          cart_product_color: Products_on_the_cart[index]["color"],
          cart_product_newprice: Products_on_the_cart[index]["price"],
          cart_product_picture: Products_on_the_cart[index]["picture"],
          cart_product_quantity: Products_on_the_cart[index]["quantity"],
          cart_product_size: Products_on_the_cart[index]["size"],
        );
      },
    );
  }
}
