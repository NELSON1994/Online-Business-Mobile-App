import 'package:ecommerce_flutter/pages/product.dart';
import 'package:flutter/material.dart';

class Single_Product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_oldprice;
  final product_newprice;

  Single_Product({
    this.product_name,
    this.product_picture,
    this.product_oldprice,
    this.product_newprice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: product_name,
          child: Material(
            child: InkWell(

              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context)=> ProductDetail(
                        // passing the details
                        productdetailname: product_name,
                        productdetailnewprice: product_newprice,
                        productdetailoldprice: product_oldprice,
                        productdetailpicture: product_picture,
                      )
                  )
              ),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Text(
                              product_name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                color: Colors.black87,
                              ),
                            )
                        ),
                        Expanded(
                            child: Text(
                              "\$${product_newprice}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                                fontSize: 16.0,
                              ),
                            )
                        ),
                      ],
                    ),

//FIRST UI BEFORE IMPLEMENTATION
//                    color: Colors.white70,
//                    child: ListTile(
//                      title: Text(
//                        "\$$product_newprice",
//                        // it was not string so we format it to string
//                        style: TextStyle(
//                            color: Colors.red,
//                            fontWeight: FontWeight
//                                .w800 // define the fontweight to 800 type
//                            ),
//                      ),
//                      subtitle: Text(
//                        "\$$product_oldprice",
//                        // it was not string so we format it to string
//                        style: TextStyle(
//                            color: Colors.black54,
//                            fontWeight: FontWeight.w600,
//                            // define the fontweight to 600 type
//                            decoration: TextDecoration.lineThrough),
//                      ),
//                      leading: Text(
//                        product_name,
//                        style: TextStyle(fontWeight: FontWeight.bold),
//                      ),
//                    ),
                  ),
                  child: Image.asset(
                    product_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )
      ),
    );
  }
}
