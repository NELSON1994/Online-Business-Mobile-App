import 'package:ecommerce_flutter/components/horizontal_listview.dart';
import 'package:ecommerce_flutter/components/products.dart';
import 'package:ecommerce_flutter/pages/cart.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_corousel = new Container(
      height: 200.0,
      //========================FOR THE MOVING IMAGES
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          //assets images are images stored within the application
          AssetImage('images/one.jpg'),
          AssetImage('images/two.jpg'),
          AssetImage('images/three.jpg'),
          AssetImage('images/four.jpg'),
          AssetImage('images/five.jpg'),
          AssetImage('images/six.jpg'),
          AssetImage('images/seven.jpg'),
          AssetImage('images/eight.jpg'),
          AssetImage('images/nine.jpg'),
          AssetImage('images/ten.jpg'),
          AssetImage('images/dress.jpg'),
          AssetImage('images/cap.jpg'),
          AssetImage('images/jeans.jpg'),
          AssetImage('images/shirt.jpg'),
          AssetImage('images/sweater.jpg'),
          AssetImage('images/six.jpg'),
          AssetImage('images/shoes.jpg'),
          AssetImage('images/trenchcoat.jpg'),
          AssetImage('images/tshirt.jpg'),
          AssetImage('images/tvest.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.red,
        indicatorBgPadding: 4.0,
        showIndicator: false, // hidding the dots indicators
        // dotSize: 0.0,// hide the dots below the corousel
      ),
    );

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0, // removing shadow
        title: Text("ECOMMERCE"),
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
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Cart()));
              }
              )
        ],
      ),
      //====================FOR THE SLIDDING DRAWER
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // Text("My Profile"),
            UserAccountsDrawerHeader(
              accountName: Text("Nelson1234"),
              accountEmail: Text("Nelson62moses@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            //body of the drawer
            // inkwell is used to make the widget clickable
            InkWell(
              onTap: () {}, //provide the tapping effect here
              child: ListTile(
                title: Text("HOME"),
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                //trailing: Icon(Icons.arrow_forward),
              ),
            ),
            InkWell(
              onTap: () {}, //provide the tapping effect here
              child: ListTile(
                title: Text("MY ACCOUNT"),
                leading: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
                //trailing: Icon(Icons.arrow_forward),
              ),
            ),
            InkWell(
              onTap: () {}, //provide the tapping effect here
              child: ListTile(
                title: Text("MY ORDERS"),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.red,
                ),
                //trailing: Icon(Icons.arrow_forward),
              ),
            ),
            InkWell(
              onTap: () {
                // navigating to the carts page
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Cart()));
              }, //provide the tapping effect here
              child: ListTile(
                title: Text("SHOPPING CART"),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.red,
                ),
                // trailing: Icon(Icons.arrow_forward),
              ),
            ),
            InkWell(
              onTap: () {}, //provide the tapping effect here
              child: ListTile(
                title: Text("FAVORITES"),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                // trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Divider(), // draw the divider line
            InkWell(
              onTap: () {}, //provide the tapping effect here
              child: ListTile(
                title: Text("SETTINGS"),
                leading: Icon(
                  Icons.settings,
                  color: Colors.red,
                ),
                // trailing: Icon(Icons.arrow_forward),
              ),
            ),

            InkWell(
              onTap: () {}, //provide the tapping effect here
              child: ListTile(
                title: Text("ABOUT"),
                leading: Icon(
                  Icons.announcement,
                  color: Colors.red,
                ),
                // trailing: Icon(Icons.arrow_forward),
              ),
            ),
            InkWell(
              onTap: () {}, //provide the tapping effect here
              child: ListTile(
                title: Text("HELP"),
                leading: Icon(
                  Icons.help,
                  color: Colors.red,
                ),
                // trailing: Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ),

//      body: ,

      body: new ListView(
        children: <Widget>[
          // we call the created image couresel
          image_corousel,
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Categories',
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          // provide horizontal list view
          HorizontalList(),
          new Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Recent Products',
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),

          // grid view for recent products
          Container(
            height: 320.0,
            child: Product(),
          )
        ],
      ),
    );
  }
}
