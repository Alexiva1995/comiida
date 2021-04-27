import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class InitPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: <Widget>[
           Expanded(
            child: Column(
              children: <Widget>[
                _swiperTarjetas(context),
                SizedBox(height: 60.0,),
                Text("SKIP" , style: TextStyle(color: Color.fromRGBO(237, 29, 29 , 1) ,  fontSize: 17 , fontWeight: FontWeight.bold),),
              ],
            ) ,
           ),
           Column(children: <Widget>[
            _buttonFill( context, "SIGN IN" ,),
            _buttonLine(context , "LOGIN"),
           ],)
         ],
        ),
      )
    );
  }

}



  _swiperTarjetas(BuildContext context) {
    // ajustar en base ancho altura del dispositivo
    // final _screenSize = MediaQuery.of(context).size;
    // lista de imageens
    final List imgList = [
    'assets/img/exampleburger1.png',
    'assets/img/exampleburger2.png',
    'assets/img/exampleburger3.png',
    'assets/img/exampleburger4.png',
    ];
    
    return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20),
      bottomLeft: Radius.circular(20),
      bottomRight: Radius.circular(20)
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.grey[300],
        blurRadius: 15.0,
        spreadRadius: -16,
        offset: Offset(0, 30.0), // Shadow position
      ),
      ],
    ),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
             child:Image.asset(
              imgList[index],
              fit: BoxFit.fill,
            )
          );
        },
        itemCount: imgList.length,
        itemWidth: 380.0,
        itemHeight: 450.0,
        layout: SwiperLayout.TINDER,
        )
    );
  }

  _buttonFill(BuildContext context ,   String title) {
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
      height: 55.0,
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
           Navigator.pushReplacementNamed(context, 'signup');
        },
      )
    );
  }
  
  _buttonLine( BuildContext  context , String title) {
    return Container(
              margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 28),
              height: 55.0,
              width: double.infinity,
              child: RaisedButton(
                elevation: 0.0, //remover sombrado
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Color.fromRGBO(237, 29, 29 , 1) , width:1.5 )
                    ),
                padding: EdgeInsets.all(10.0),
                color: Colors.white,
                textColor: Color.fromRGBO(237, 29, 29 , 1),
                child: Text(title, style: TextStyle(fontSize: 15)),
                onPressed: () {
                          Navigator.pushReplacementNamed(context, 'login');
                },
      )
    );
  }
