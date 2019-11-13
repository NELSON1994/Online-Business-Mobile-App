import 'package:flutter/material.dart';

class Single_cart_product extends StatelessWidget {
  //====variables
  final cart_product_name;
  final cart_product_picture;
  final cart_product_newprice;
  final cart_product_size;
  final cart_product_color;
  final cart_product_quantity;

// constructor
  Single_cart_product({
    this.cart_product_name,
    this.cart_product_picture,
    this.cart_product_newprice,
    this.cart_product_size,
    this.cart_product_color,
    this.cart_product_quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Card(

      child: ListTile(
        leading: Image.asset(
            cart_product_picture,
          width: 80.0,
          height: 80.0,
        ),
        title: Text(cart_product_name),
        subtitle: Column(
          children: <Widget>[
            // =======row inside a column
            Row(
              children: <Widget>[
                //============PRODUCT SIZE
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Size :",
                      style: TextStyle(
                          color: Colors.black87,
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      cart_product_size,
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    )),
                //==============PRODUCT COLOR
                Padding(

                    padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                    child: Text(
                      "Color :",
                      style: TextStyle(color: Colors.black87),
                    )),
                Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      cart_product_color,
                      style: TextStyle(color: Colors.red,
                        ),
                    )
                ),

              ],
            ),
            //============PRODUCT PRICE SECTION
            Container(
            alignment: Alignment.topLeft,
              child: Text("\$${cart_product_newprice}",
                style: TextStyle(
                    color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,

                ),
              ),
            ),

          ],
        ),
        trailing: new Column(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_drop_up),
                onPressed: (){},
            ),
            Text(
              "\$cart_product_quantity"
            ),
            IconButton(
              icon: Icon(Icons.arrow_drop_down),
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }
}
