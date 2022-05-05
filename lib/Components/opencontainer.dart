import "package:flutter/material.dart";
import "dart:math" as math;
import "../MainScreen/Datamodel.dart";

class opencontainer extends StatefulWidget {
  final filepath;
  final title;
  final weight;
  final price;
  final productdetail;

  opencontainer(this.filepath, this.title, this.weight, this.price, this.productdetail);

  @override
  State<opencontainer> createState() => _opencontainerState(this.filepath, this.title, this.weight, this.price, this.productdetail);
}

class _opencontainerState extends State<opencontainer> {

  // Essential data
  final filepath;
  final title;
  final weight;
  final String price;
  final productdetail;

  // Logic data
  bool heart_press = false;
  int numbers = 1;

  
  

  


  _opencontainerState(this.filepath, this.title, this.weight, this.price, this.productdetail);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(242, 243, 242, 1),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios, color: Colors.black)),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Icon(Icons.save, color: Colors.black))
        ]
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300.44,
              decoration: BoxDecoration(
                color: Color.fromRGBO(242, 243, 242, 1),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
              ),
              child: Center(
                child: SizedBox(
                  height: 199.18,
                  width: 329.34,
                  child: Image.asset(filepath, width: 329.34, height: 199.18,)
                )
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 20),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(title, style: TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.w400
                              ,
                              )),
                              Container(
                                
                                child: Text(weight, style: TextStyle(
                                  fontFamily: "Gilroy",
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                )),
                              )
                            ]
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: GestureDetector(
                            onTap: () {
                              heart_press = true;
                            },

                            child: Image.asset('assets/images/heart.png', color: heart_press ? Colors.red: Colors.white)
                          )
                        )
                      ]
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 119.67,
                          height: 45.67,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      numbers++;
                                    });
                                  },
                                  child: Text("+", style: TextStyle(fontFamily: "Gilroy", fontSize: 20, color: Colors.grey, fontWeight: FontWeight.w600))
                                )
                              ),
                              Container(
                                child: Text(numbers.toString(), style: TextStyle(fontFamily: "Gilroy", fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400))
                              ),
                              Container(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      numbers--;
                                    });
                                  },
                                  child: Text("-", style: TextStyle(fontFamily: "Gilroy", fontSize: 20, color: Colors.grey, fontWeight: FontWeight.w400)))
                              )
                            ]
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Text((double.parse(price.substring(1, price.length)) * numbers).round().toString(), style: TextStyle(fontFamily: "Gilroy", fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400))
                        )
                      ]
                    )
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text("Product Detail", style: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600))
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(productdetail, style: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w600))
                        )
                      ]
                    )
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 20),
                    child: Image.asset("assets/images/stars.png")
                  ),
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                    width: 350,
                    height: 67,
                    margin: EdgeInsets.only(top: 30, right: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(83, 177, 117, 1),

                    ),
                    child: Center(
                      child: Text("Add to Basket", style: TextStyle(fontFamily: "Gilroy", fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400))
                    )
                  )
                ))]
              )
            )


          ]
        )
      )
    );
  }
}