import "package:flutter/material.dart";

import "package:animations/animations.dart";
import "../../Components/opencontainer.dart";

class Mainmenu extends StatefulWidget {
  

  @override
  _Mainmenu createState() => _Mainmenu();
}

class _Mainmenu extends State<Mainmenu> {
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

  
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
      child: Column(
        
        children: [Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Container(
                width: 40,
                height: 40,
                child: Image.asset("assets/images/carrot.png")
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset("assets/images/place.png", color: Colors.black)
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text("Dhaka, Banassre", style: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400))
                    )
                  ]
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 24.71, right: 24.71),
                child: SizedBox(
                  width: 364,
                  height: 51.57,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Color.fromRGBO(242, 243, 242, 1),
                      filled: true,
                      prefixIcon: Icon(Icons.search, color: Colors.black),
                      hintText: "Search Store",
                      hintStyle: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.grey),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      )
                    )
                  )
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 23.5, right: 23.5),
                child: Image.asset("assets/images/banner.png")
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text("Exclusive Offer", style: TextStyle(fontFamily: "Gilroy", fontSize: 24, color: Colors.black, fontWeight: FontWeight.w400))

                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Text("See all", style: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Color.fromRGBO(83, 177, 117, 1)))
                      
                    )
                  ]
                )
              ),
              Container(
                height: 248.51,
                

                
                
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Images.length,
                  itemBuilder:(context, i) {
                    return OpenContainer(
                    closedBuilder: (context, action) => Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      width: 173.32,
                      height: 248.51,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color.fromRGBO(226, 226, 226, 1)),
                        ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Image.asset(Images[i]),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(top: 20, left: 20),
                            child: Text(title[i], style: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400))
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(top: 5, left: 20),
                            child: Text(weight[i], style: TextStyle(fontFamily: "Gilroy", fontSize: 14, color: Colors.grey,))
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30, left: 20),
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Text(price[i], style: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400))
                                ),
                                Container(
                                  child: GestureDetector(
                                    child: Container(
                                      width: 45.67,
                                      height: 45.67,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Color.fromRGBO(83, 177, 117, 1)  ,
                                    ),
                                    child: Center(
                                        child: Text("+", style: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.white, fontWeight: FontWeight.w400)),
                                    )
                                    )
                                    )
                                  )
                                

                              ]
                            )
                          )
                        ]
                      )
                      
                ),
                openBuilder: (context, action) => opencontainer(Images[i], title[i], weight[i], price[i], "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet."));
                      
                    
                    
                  }

                )
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text("Best Selling", style: TextStyle(
                        fontFamily: "Gilroy",
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w400
                      ))
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Text("See all", style: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Color.fromRGBO(83, 177, 117, 1)))
                    )
                  ]
                )
              ),
              Container(
                height: 250,
                margin: EdgeInsets.only(top: 20, left: 20),

                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: image.length,
                  itemBuilder: (context, i) {
                    return OpenContainer(
                    closedBuilder: ((context, action) => Container(
                      width: 173.32,
                      height: 248.51,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1.0, color: Color.fromRGBO(226, 226, 226, 1))
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Image.asset(image[i])
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 20),
                              alignment: Alignment.centerLeft,
                              child: Text(titledaily[i], style: TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 16, 
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              )),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              alignment: Alignment.centerLeft,
                              child: Text(weightdaily[i], style: TextStyle(
                                fontFamily: "Gilroy", 
                                fontSize: 16, 
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                              ))
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 30, left: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text(pricedaily[i], style: TextStyle(
                                      fontFamily: "Gilroy",
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400
                                    ))
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 20),
                                    width: 45.67,
                                    height: 45.67,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Color.fromRGBO(83, 177, 117, 1)
                                    ),
                                    child: Center(
                                      child: Text("+", style: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.white, fontWeight: FontWeight.w400))
                                    )
                                  )
                                ]
                              )
                            )
                          ]
                        )
                      )
                    )
                    
                    ),
                    openBuilder: (context, action) => opencontainer(image[i], titledaily[i], weightdaily[i], pricedaily[i], "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet."));
                  }
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text("Groceries", style: TextStyle(
                        fontFamily: "Gilroy",
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ))
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Text("See all", style: TextStyle(
                        fontFamily: "Gilroy",
                        fontSize: 16,
                        color: Color.fromRGBO(83, 177, 117, 1),
                        fontWeight: FontWeight.w400,
                      ))
                    )
                  ]
                )
              ),
              Container(
                height: 105,
                margin: EdgeInsets.only(top: 20, left: 20),

                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: groceriesfilepath.length,
                  itemBuilder: (context, i) {
                    return Container(
                      width: 248.19,
                      height: 105,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        color: listcolor[i],
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Image.asset(groceriesfilepath[i])
                          ),
                          Container(
                            child: Text(groceriesString[i], style: TextStyle(fontFamily: "Gilroy", fontSize: 20, fontWeight: FontWeight.w400))
                          )
                        ]
                      )
                    );

                  }
                )
              ),
              Container(
                height: 250,
                margin: EdgeInsets.only(top: 20, left: 20),

                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: grofilepath.length,
                  itemBuilder: (context, i) {
                    return OpenContainer(
                      transitionType: ContainerTransitionType.fadeThrough,
                    closedBuilder: (context, action) => Container(
                      width: 173.32,
                      height: 248.51,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1.0, color: Color.fromRGBO(226, 226, 226, 1))
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Image.asset(grofilepath[i])
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 20),
                              alignment: Alignment.centerLeft,
                              child: Text(grotitle[i], style: TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 16, 
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              )),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              alignment: Alignment.centerLeft,
                              child: Text(groweight[i], style: TextStyle(
                                fontFamily: "Gilroy", 
                                fontSize: 16, 
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                              ))
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 30, left: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text(pricedaily[i], style: TextStyle(
                                      fontFamily: "Gilroy",
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400
                                    ))
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 20),
                                    width: 45.67,
                                    height: 45.67,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Color.fromRGBO(83, 177, 117, 1)
                                    ),
                                    child: Center(
                                      child: Text("+", style: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.white, fontWeight: FontWeight.w400))
                                    )
                                  )
                                ]
                              )
                            )
                          ]
                        )
                      )),
                      openBuilder: (context, action) => opencontainer(grofilepath[i], grotitle[i], groweight[i], r"$4.99", "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.")
                    );
                  }
                )
              ),
              

              
            ]
          ),
        )
        ])
    )
    );
  }
}