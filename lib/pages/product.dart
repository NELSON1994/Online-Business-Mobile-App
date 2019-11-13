import 'package:ecommerce_flutter/pages/similarProducts.dart';
import 'package:ecommerce_flutter/screens/home.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final productdetailname;
  final productdetailnewprice;
  final productdetailoldprice;
  final productdetailpicture;

  // constructor
  ProductDetail(
      {this.productdetailname,
      this.productdetailnewprice,
      this.productdetailoldprice,
      this.productdetailpicture});

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0, // removing shadow
        title: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
          },
            child: Text("ECOMMERCE",
            )
        ),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.add_shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            // color: Colors.black,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.productdetailpicture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.productdetailname,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "\$${widget.productdetailoldprice}",
                          // converting int to string
                          style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$${widget.productdetailnewprice}",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            //decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          //=====================the first buttons
          Row(
            children: <Widget>[
              // =====================the size button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Size"),
                            content: Text("Choose the size"),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text(
                                  "close",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Size",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Color"),
                            content: Text("Choose the color"),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text(
                                  "close",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Color",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Quantity"),
                            content: Text("Choose the quantity"),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text(
                                  "close",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Quantity",
                          style: TextStyle(
                            fontSize: 11.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          //=====================the second buttons
          Row(
            children: <Widget>[
              // =====================the size button
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Colors.red,
                textColor: Colors.black87,
                elevation: 0.2,
                child: Text("Buy Now"),
              )),
              IconButton(
                icon: Icon(Icons.add_shopping_cart),
                color: Colors.red,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                color: Colors.red,
                onPressed: () {},
              )
            ],
          ),
          Divider(),
          ListTile(
            title: Text(
              "Product Details",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
            ),
            subtitle: Text(
                "write some paragraph here guyuguyyguihjg hguiguy hjhuiui jhuihiu jhhui hhuig jhuhui bhyugy nyugyg fdtrsr gfdtrdr gftyfty gg gfuyuyu hgghg"),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product Name",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black87),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(widget.productdetailname),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product Brand",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black87),
                ),
              ),
              // remember to create product brand
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("NELLYON"),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product Condition",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black87),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("NEW"),
              )
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("SIMILAR PRODUCTS",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
            ),
          ),
          //=====================SIMILAR PRODUCTS SECTION
          Container(
            height: 350.0,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}
