import "package:flutter/material.dart";

import "package:animations/animations.dart";
import "../../Components/opencontainer.dart";
import "mainmenu.dart";
import "searchpage.dart";
import "shop.dart";
import "favorite.dart";
import "profile.dart";


class mainscreen extends StatefulWidget {
  const mainscreen({ Key? key }) : super(key: key);

  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  // Exclusive offer element
  List<String> Images = [
    "assets/images/banana.png",
    "assets/images/apple.png",


  ];
  List<String> title = [
    "Organic banana",
    "Red Apple",
  ];
  List<String> weight = [
    "7pcs, Priceg",
    "1kg, Priceg",
  ];
  List<String> price = [
    r"$4.99",
    r"$4.99"
  ];
  // Daily deals offer
  List<String> image = [
    "assets/images/chilly.png",
    "assets/images/Something.png"
  ];
  List<String> titledaily = [
    "Bell Pepper Red",
    "Ginger"

  ];
  List<String> weightdaily = [
    "1kg, Priceg",
    "250gm, Priceg"
  ];
  List<String> pricedaily = [
    r"$4.99",
    r"$4.99"
  ];

  // Groceries

  List<String> groceriesfilepath = [
    "assets/images/carbohidrad.png",
    "assets/images/rice.png",
  ];
  List<String> groceriesString = [
    "Pulses",
    "Rices"
  ];
  List<Color> listcolor = [
    Color.fromRGBO(248,164,76, 1),
    Color.fromRGBO(83,177,117, 1),
  ];

  // Groceries listview

  List<String> grofilepath = [
    "assets/images/meat.png",
    "assets/images/chicken.png"


  ];
  List<String> grotitle = [
    "Fresh meat",
    "Fresh chicken",
  ];
  List<String> groweight = [
    "1kg, Priceg",
    "1kg, Priceg"
  ];
  List widgets = <Widget>[
    Mainmenu(),Seachpage(), Shop(), Favorite(), Profile(),
  ];
  int _selectedIndex = 0;

  void _onTap(int index) {
    _selectedIndex = index;


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (value) => setState(() => _selectedIndex = value),
        backgroundColor: Colors.white,
        unselectedLabelStyle: TextStyle(fontFamily: "Gilroy", fontSize: 14, color: Colors.black),
        
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shop, color: Colors.black),
            label: "Shop"
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black),
            label: "Explore",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken, color: Colors.black),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: "Account"
          )
        ]
      ),
      
    );
    }
}