import "package:flutter/material.dart";
import "../mainscreen/mainscreen.dart";

class Signup extends StatefulWidget {
  const Signup({ Key? key }) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 100),
                child: Image.asset("assets/images/carrot.png")
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 30, left: 20),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Sign up", style: TextStyle(fontFamily: "Gilroy", fontSize: 26, color: Colors.black, fontWeight: FontWeight.w600))),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 20),
                      child: Text("Enter your credentials to continue", style: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400))),

                  ]
                )
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 50, left: 20),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Username", style: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w400))),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: SizedBox(
                        width: 364.12,
                        height: 39.55,
                        child: TextField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              
                            ),
                            hintText: "Enter your username",
                            hintStyle: TextStyle(fontFamily: "Gilroy", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey)
                          )
                        )
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 40),
                      child: Text("Email", style: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w400))
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: SizedBox(
                        width: 364.12,
                        height: 39.55,
                        child: TextField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Enter your Email",
                            hintStyle: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w400)
                          )

                        )
                      )
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 30),
                      child: Text("Password", style:TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w400))
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: SizedBox(
                        width: 364.12,
                        height: 39.55,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter your password",
                            hintStyle: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w400),
                            border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                          )
                        )
                      )
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 30, left: 10),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "By continue you agree to ",
                              style: TextStyle(fontFamily: "Gilroy", fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey)
                            ),
                            TextSpan(
                              text: "Terms of Service ",
                              style: TextStyle(fontFamily: "Gilroy", fontSize: 14, fontWeight: FontWeight.w400, color: Color.fromRGBO(83, 177, 117, 1)),
                            ),
                            TextSpan(
                              text: "and ",
                              style: TextStyle(fontFamily: "Gilroy", fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w400)
                            ),
                            TextSpan(
                              text: "Privacy Policy",
                              style: TextStyle(fontFamily: "Gilroy", fontSize: 14, color: Color.fromRGBO(83, 177, 117, 1), fontWeight: FontWeight.w400)
                            )
                        
                          ]
                        )
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 25, top: 10),
                      
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => mainscreen()
                            )
                          );
                        },
                        child: Container(
                          width: 364,
                          height: 67,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(83, 177, 117, 1),

                          ),
                          child: Center(
                            child: Text("Sign up", style: TextStyle(fontFamily: "Gilroy", fontSize: 14, color: Colors.white, fontWeight: FontWeight.w400))
                          )),
                          


                        )
                      )
                  
                  ]
                )
              )
            ]
          )
        )
      )
    );
  }
}