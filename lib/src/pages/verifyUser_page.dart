import 'package:flutter/material.dart';

class VerifyUserPage extends StatelessWidget {

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
              // SizedBox(height: 60,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                child: Text("Awesome!" , 
                style: TextStyle(color: Color.fromRGBO(237, 29, 29 , 1) ,  fontSize: 37 , fontWeight: FontWeight.bold), )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                child: Text("Phone verified." , 
                style: TextStyle(color: Color.fromRGBO(237, 29, 29 , 1) ,  fontSize: 37 , fontWeight: FontWeight.bold), )),
              SizedBox(height: 8,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                child: Text("We need to know your name to set-up your account." , 
                style: TextStyle(color: Colors.grey[450] ,  fontSize: 16), )),
             ]),
           ),

           Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
              SizedBox(width: 20.0,),
               _textField(),
              SizedBox(width: 20.0,),
             ],
            ),
          
           Column(
              crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
              _buttonFill( context , "Start Ordering"),
              // SizedBox(height: 40,),
             ],
            ),

         ],
        ),
      ),
    );
  }


}

_textField() {
  return  Flexible(
      child: TextField(
            keyboardType: TextInputType.text,
            cursorColor: Colors.red,
            style: TextStyle(fontSize: 20 , color: Colors.grey[700] , fontWeight: FontWeight.bold),
            decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              //  when the TextFormField in unfocused 
            ) ,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              //  when the TextFormField in focused 
            ) ,
            labelText: 'Your name',
            labelStyle: TextStyle(color: Colors.red )
          ),
          onChanged:(value){
            print(value);
          },
          ));
}


_buttonFill(BuildContext context ,  String title) {
    return Container(
    decoration: BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.only(
      topLeft: Radius.circular(15),
      topRight: Radius.circular(15),
      bottomLeft: Radius.circular(15),
      bottomRight: Radius.circular(15)
    ),
    boxShadow: [
      BoxShadow(
        color:Color.fromRGBO(237, 29, 29 , 0.3),
        blurRadius: 6.0,
        spreadRadius: 0.2,
        offset: Offset(0, 8), // Shadow position
      ),
      ],
    ),
      margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 28),
      height: 60.0,
      width: double.infinity,
      child: RaisedButton(
        elevation: 0.0, //remover sombrado
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)),
        padding: EdgeInsets.all(10.0),
        color: Color.fromRGBO(237, 29, 29 , 1),
        textColor: Colors.white,
        child: Text(title, style: TextStyle(fontSize: 15)),
        onPressed: () {
          Navigator.pushReplacementNamed(context, 'locationinit');
        },
      )
    );
  }



 