import 'package:flutter/material.dart';

class PhonePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: <Widget>[
           Container(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
              SizedBox(height: 60,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                child: Text("Verify Phone" , 
                style: TextStyle(color: Color.fromRGBO(237, 29, 29 , 1) ,  fontSize: 37 , fontWeight: FontWeight.bold), )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                child: Text("Number" , 
                style: TextStyle(color: Color.fromRGBO(237, 29, 29 , 1) ,  fontSize: 37 , fontWeight: FontWeight.bold), )),
              SizedBox(height: 8,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                child: Text("You will receive an SMS with a code on this number.Charges may apply." , 
                style: TextStyle(color: Colors.grey[450] ,  fontSize: 16), )),
                
              SizedBox(height: 15,),
               _phone(),
             ]),
           ),

          
           Column(
              crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
              _buttonFill(context , "Send OTP"),
              SizedBox(height: 80,),
             ],
            ),

         ],
        ),
      ),
    );
  }

}


 IntrinsicHeight _phone() {
    return IntrinsicHeight(
           child: Container(
             margin: EdgeInsets.symmetric(horizontal: 30),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: <Widget>[
                _countries(),
                VerticalDivider(
                  thickness: 1,
                  endIndent: 18,
                  indent: 18,
                  color: Colors.grey,
                ),
                Flexible(
                  child: TextField(
                   keyboardType: TextInputType.phone,
                   cursorColor: Colors.red,
                   style: TextStyle(fontSize: 20 , color: Colors.grey[700] , fontWeight: FontWeight.bold),
                   decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    labelText: 'Phone Number',
                    labelStyle: TextStyle(color: Colors.grey[500] )
                  ),
                  onChanged:(value){
                    print(value);
                  },
                  ),
                ),
               ],
              ),
           ),
         );
  }


_buttonFill( BuildContext context,  String title) {
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
          Navigator.pushReplacementNamed(context, 'verifyphone');
        },
      )
    );
  }


_countries(){
  return DropdownButtonHideUnderline(
    child: ButtonTheme(
       alignedDropdown: true,
      child: DropdownButton(
      elevation: 3,
      iconEnabledColor: Colors.red,
      items: <String>['assets/img/flagbrasil.png', 'assets/img/flagmexico.png', 'assets/img/flagvenezuela.png']
          .map((String val) => DropdownMenuItem<String>(
        value: val,
        child: Center(
          child: ClipRRect(
          borderRadius: BorderRadius.circular(50.0),
            child: Image.asset(
              val,
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
          ),
        ),
      )).toList(),
      onChanged: (value) {

      },
      hint: ClipRRect(
          borderRadius: BorderRadius.circular(50.0),
            child: Image.asset(
              "assets/img/flagbrasil.png",
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
        ),
    ),
  ),
);

}