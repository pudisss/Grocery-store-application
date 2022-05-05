import "package:flutter/material.dart";
import "signup.dart";
class Signin extends StatefulWidget {
  const Signin({ Key? key }) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.only(top: 75),
          child: Column(
            children: [
              Container(
                child: Image.asset("assets/images/carrot.png")
              ),
              Container(
                
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 20, top: 50),
                      child: Text("Loging", style: TextStyle(fontFamily: "Gilroy", fontSize: 26, fontWeight: FontWeight.w600,))),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Text("Enter your email and password", style: TextStyle(fontFamily: "Gilroy", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey))),

                  ]
                )
              ),

              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20, top: 30),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      
                      child: Text("Email", style: TextStyle(fontFamily: "Gilroy", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey,))),
                    SizedBox(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter your email.",
                          
                          hintStyle: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w400),
                          border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            
                          )
                        )
                      )
                    )
                  ]
                )
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20, top: 40),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      
                      child: Text("Password", style: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w400))
                    ),
                    SizedBox(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter your password.",
                          hintStyle: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w400),
                          border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                          ),
                          suffixIcon: Image.asset("assets/images/showpassword.png")
                          
                        )
                      )
                    )
                  ],
                )
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(top: 30),

                child: GestureDetector(
                  child: Text("Forgot your password?", style: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.grey,))
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 75),
                child: GestureDetector(
                  child: Container(
                    width: 364,
                    height: 67,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(83, 177, 117, 1)
                      
                    ),
                    child: Center(
                      child: Text("Log in", style: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.white, fontWeight: FontWeight.w400))
                    )
                  )
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Signup()
                      )
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w400)
                        ),
                        TextSpan(
                          text: "Log in",
                          style: TextStyle(fontFamily: "Gilroy", fontSize: 16, color: Color.fromRGBO(83, 177, 117, 1), )
                        )
                      ]
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