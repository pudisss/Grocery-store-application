import "package:flutter/material.dart";


class Shop extends StatefulWidget {
  

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Container(
                child: Text("My cart", style: TextStyle(fontFamily: "Gilroy", fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400))
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 158,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (context, i) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: 158,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Color.fromRGBO(226, 226, 226, 1)),
                        
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Image.asset("assets/images/apple.png"),
                          ),
                          Container(

                            child:Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Text("Apple")
                                ),
                                Container(
                                  child: Text("7 Pounds")
                                )
                              ]
                            )
                          )
                        ]
                      )
                      

                      
                    );
                  }
                )
              )
            ]
          ),
        )

      )
    );
  }
}