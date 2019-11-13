import 'package:ecommerce_flutter/components/card_products.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0, // removing shadow
        title: Text("Shopping cart"),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
    //=============FOR THE BOTTOM NAVIGATION BAR
    bottomNavigationBar: Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Expanded(
              child: ListTile(
            title: Text("Total"),
                subtitle: Text("\$230"),
          ),
          ),
          Expanded(
              child: MaterialButton(
                color: Colors.red,
                  onPressed: (){},
                child: Text(
                    "Check Out",
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              )
          )
        ],
      ),
    ),
      //==========BODY OF THE SCAFFOLD
      body: Cart_products(),// import from cart_product file
    );
  }
}
