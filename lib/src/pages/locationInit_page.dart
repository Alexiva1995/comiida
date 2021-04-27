import 'package:flutter/material.dart';

class LocationInitPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: <Widget>[
           Container(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: <Widget>[
              Container(
                child: Text("IMagen!" , 
                style: TextStyle(color: Color.fromRGBO(237, 29, 29 , 1) ,  fontSize: 37 , fontWeight: FontWeight.bold), )),
              SizedBox(height: 30,),
              Container(
                child: Text("WHERE DO YOU LIVE/WORK?" , 
                style: TextStyle(color: Colors.grey[700],  fontSize: 16 , fontWeight: FontWeight.bold), )),
              SizedBox(height: 6,),
              Container(
                child: Text("77th Street. 90 W 22nd St, SD. 140301" , 
                style: TextStyle(color: Colors.grey[400],  fontSize: 16 , fontWeight: FontWeight.bold), )),
             ]),
           ),


          
           Column(
              crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
              _buttonFill("Auto-Detect"),
              SizedBox(height: 10,),
              Text('Add a custom address' , style: TextStyle(color: Color.fromRGBO(237, 29, 29 , 1)  , fontSize: 16)),
             ],
            ),

         ],
        ),
      ),
    );
  }


}


_buttonFill(String title) {
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
        onPressed: () {},
      )
    );
  }



 