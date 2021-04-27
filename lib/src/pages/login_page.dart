import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: <Widget>[
           Container(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                child: Text("Welcome Back!" , 
                style: TextStyle(color: Color.fromRGBO(237, 29, 29 , 1) ,  fontSize: 37 , fontWeight: FontWeight.bold), )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                child: Text("Login to Comiida" , 
                style: TextStyle(color: Color.fromRGBO(237, 29, 29 , 1) ,  fontSize: 37 , fontWeight: FontWeight.bold), )),
              SizedBox(height: 8,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                child: Text("Choose your preferred way to sign up." , 
                style: TextStyle(color: Colors.grey[450] ,  fontSize: 16), )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                child: Text("or just sign up manually!." , 
                style: TextStyle(color: Colors.grey[450] ,  fontSize: 16), )),
             ]),
           ),

           Column(
              crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
              _buttonLine("Sign up using Facebook" , Colors.blue , 'assets/img/facebook.png'),
              _buttonLine("Sign up using Google" , Colors.red , 'assets/img/google.png'),
              _buttonFill("Sign up using phone"),
             ],
            ),

           Column(
              crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
                Text("Don't have an account?" , style: TextStyle(color: Colors.grey[400] ,  fontSize: 17 , fontWeight: FontWeight.bold),),
                SizedBox(height: 4,),
                Text("Sign up" , style: TextStyle(color: Color.fromRGBO(237, 29, 29 , 0.5) ,  fontSize: 17 , fontWeight: FontWeight.bold),),
             ],
            ),

         ],
        ),
      ),
    );
  }
}


 _buttonLine(String title , Color color , String path) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 28),
      height: 60.0,
      width: double.infinity,
      child: RaisedButton.icon(
        label: Text(title, style: TextStyle(fontSize: 15)),
        icon: Container(
                padding:  EdgeInsets.only(right: 10),  
                child: Image.asset(path , width:20, height: 20,
              )
            ),
        elevation: 0.0, //remover sombrado
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(color: color , width:1.5 )
            ),
        color: Colors.white,
        textColor: color,
        onPressed: () {},
      )
    );
  }


_buttonFill(String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 28),
      height: 60.0,
      width: double.infinity,
      child: RaisedButton(
        elevation: 0.0, //remover sombrado
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)),
        padding: EdgeInsets.all(10.0),
        color: Colors.grey[700],
        textColor: Colors.white,
        child: Text(title, style: TextStyle(fontSize: 15)),
        onPressed: () {},
      )
    );
  }