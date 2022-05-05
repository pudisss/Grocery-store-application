import "package:flutter/material.dart";
import "singin/googlefacebook.dart";

class MainScreen extends StatefulWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/8140 1.png")
          )
        ),
        child: Container(
          margin: EdgeInsets.only(bottom: 100),
          alignment: Alignment.bottomCenter,
          child: Column(
            children: [
              Spacer(),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Image.asset("assets/images/whitecarrot.png")
              ),
              Text("Welcome", style: TextStyle(fontFamily: "Gilroy", fontSize: 48, color: Colors.white, fontWeight: FontWeight.bold)),
              Text("to our store.", style: TextStyle(fontFamily: "Gilroy", fontSize: 48, color: Colors.white, fontWeight: FontWeight.bold)),
              Text("Ger your groceries in as fast as one hour", style: TextStyle(fontFamily: "Gilroy", fontSize: 12, color: Colors.white, fontWeight: FontWeight.w400)),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Choosesignin(),
                      )
                    );
                  },
                  child: Container(
                    width: 353,
                    height: 67,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(83, 177, 117, 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text("Get started", style: TextStyle(fontFamily: "Gilroy", fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600))
                    )
                  )
                )
              )
            ]
          ),
        )

      )
    );
  }
}