import "package:flutter/material.dart";
import "package:animations/animations.dart";
import "Producttype.dart";

class Seachpage extends StatefulWidget {
  

  @override
  State<Seachpage> createState() => _SeachpageState();
}

class _SeachpageState extends State<Seachpage> {

  // Essential data
  List<String> filepath = [
    "assets/images/Fresh fruit.png",
    "assets/images/Cookingoil.png",
    "assets/images/meatandfish.png",
    "assets/images/bread.png",
    "assets/images/dairy.png",
    "assets/images/beverage.png"


  ];

  List<Color> listColor = [
    Color.fromRGBO(83,177,117, 1),
    Color.fromRGBO(248,164,76, 1),
    Color.fromRGBO(247,165,147, 1),
    Color.fromRGBO(211,176,224, 1),
    Color.fromRGBO(253,229,152, 1),
    Color.fromRGBO(183,223,245, 1),
    
    

  ];
  List<String> sentence = [
    r"Frash Fruits & Vegetable",
    r"Cooking Oil & Ghee",
    r"Meat & Fish",
    r"Bakery & Snacks",
    r"Dairy & Eggs",
    r"Beverages",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
        
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Text("Find Product", style: TextStyle(fontFamily: "Gilroy", fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400)),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 25, right: 25),
                    child: SizedBox(
                      width: 364,
                      height: 51.57,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Color.fromRGBO(242, 243, 242, 1),
                          filled: true,
                          hintText: "Search Store",
                          hintStyle: TextStyle(fontFamily: "Gilroy", fontSize: 14, color: Color.fromRGBO(124, 124, 124, 1)),
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                            
                          )
                        )

                      )
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: GridView.count(
                      scrollDirection: Axis.vertical,
                      crossAxisCount: 2,
                      children: List.generate(filepath.length, (index) {
                        return OpenContainer(
                          transitionType: ContainerTransitionType.fadeThrough,
                        closedBuilder: (context, action) => Container(
                          margin: EdgeInsets.all(5),
                          width: 174.5,
                          height: 189.11,
                          decoration: BoxDecoration(
                            color: listColor[index].withOpacity(0.25),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1.0, color: listColor[index].withOpacity(0.7))
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Image.asset(filepath[index])
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                alignment: Alignment.center, 
                                child: Text(sentence[index], style: TextStyle(fontFamily: "Gilroy", fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400))
                              )
                            ]
                          )
                        ),
                        openBuilder: (context, action) => Producttype(sentence[index]));
                      }) 
                      
                    )
                  )
                  
                ]
              ),
            ),
          ],
        )
      )
    ));
  }
}