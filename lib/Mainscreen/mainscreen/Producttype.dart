import "package:flutter/material.dart";


class Producttype extends StatefulWidget {

  final String titleappbar;

  Producttype(this.titleappbar);
  
 

  @override
  _ProducttypeState createState() => _ProducttypeState(this.titleappbar);
}

class _ProducttypeState extends State<Producttype> {

  final String titleappbar;


  _ProducttypeState(this.titleappbar);

  static List<String> filepaths = [
    "assets/images/beverage/code.png",
    "assets/images/beverage/orangejuice.png",
    "assets/images/beverage/pepsi.png",
    "assets/images/beverage/pngfuel 11.png",
    "assets/images/beverage/pngfuel 12.png",
    "assets/images/beverage/tree-top-juice-apple-grape-64oz 1.png"
  ];
  

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios, color: Colors.black)
        ),
        title: Text(titleappbar, style: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400)),
        backgroundColor: Colors.white,
        elevation: 0,

      ),
      body: SingleChildScrollView(
        
        scrollDirection: Axis.vertical,
        
        
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
            child: Column(children: [Container(
             
           
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: GridView.count(
              
              crossAxisCount: 2,
              scrollDirection: Axis.vertical,
              children: List.generate(filepaths.length, (index) {
                return Container(
                  width: 173.32,
                  height: 300.51,
                  margin: EdgeInsets.all(5),
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 1.0, color: Color.fromRGBO(226, 226, 226, 1)),
                    color: Colors.white,
                  )

                );
              })
            )
            
      ),
        
            ]))
    ));
  }
}