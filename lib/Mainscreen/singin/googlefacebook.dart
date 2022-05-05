import "package:flutter/material.dart";
import "signin.dart";

class Choosesignin extends StatefulWidget {
  const Choosesignin({ Key? key }) : super(key: key);

  @override
  State<Choosesignin> createState() => _ChoosesigninState();
}

class _ChoosesigninState extends State<Choosesignin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          child: Column(
            children: [
              Container(
                
                child: Image.asset("assets/images/login.png")
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20),
                
                child: Column(
                  children: [
                    Text("Get your Groceries", style: TextStyle(fontFamily: "Gilroy",fontSize: 26, color: Colors.black, fontWeight: FontWeight.w600)),
                    Text("with nector", style: TextStyle(fontFamily: "Gilroy", fontSize: 26, color: Colors.black, fontWeight: FontWeight.w600))
                  ]
                )
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: SizedBox(
                  width: 364,
                  height: 40,
                  child: TextField(
                    
                    decoration: InputDecoration(
                      prefixIcon: Image.asset("assets/images/countryflag.png"),
                      hintText: "+880",
                      hintStyle: TextStyle(fontFamily: "Gilroy", fontSize: 18, fontWeight: FontWeight.w400),
                      border: UnderlineInputBorder(

                      )
                    )
                  )
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: GestureDetector(
                  child: Text("Or connect with social media", style: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w400))
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 40, left: 25, right: 25),
                child: Column(
                  children: [
                    Container(
                      width: 364,
                      height: 67,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(83, 131, 236, 1),

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/images/Google.png"),
                          Text("Continue with Google", style: TextStyle(fontFamily: "Gilroy",fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400))

                        ]
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      width: 364,
                      height: 67,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(74, 102, 172, 1),

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/images/Facebook.png"),
                          Text("Continue with Facebook", style: TextStyle(fontFamily: "Gilroy",fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400))

                        ]
                      )
                    )
                  ]
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Signin()
                      )
                    );
                  },
                  child: Text("Already have an Account?", style: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w400))
                )
              )

            ]
          )
        )
      )
    );
  }
}