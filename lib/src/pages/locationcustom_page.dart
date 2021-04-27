import 'package:flutter/material.dart';

class LocationCustomPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   final _screenSize = MediaQuery.of(context).size;
    int _radioValue = 0;

    return Scaffold(
      body: SafeArea(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: <Widget>[
           Container(
             margin: EdgeInsets.symmetric(horizontal: 20),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                     Radio(
                       value: 0,
                       onChanged: (value){},
                       groupValue: _radioValue,
                     ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                       Text("Current Location" , style: TextStyle(color: Colors.grey[700] , fontSize: 17 , fontWeight: FontWeight.bold) ),
                       Text("Using GPS", style:TextStyle(fontSize: 15 , color: Colors.grey[600])),
                      ],
                    )
                  ],
                )
             ]),
           ),

          Container(
            width: _screenSize.width * 0.95,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.0,
                      top: 20.0,
                      bottom: 10.0, 
                    ),
                    child: Text("DETECTED LOCATIONS" , 
                      style: TextStyle(color: Colors.grey[700] , fontSize: 17 ),   
                     ),
                  ),
                  ListTile(
                    leading: Icon(Icons.location_on) ,
                    title: Text("Medelin street"),
                    subtitle: Text('77th Street. 90 W 22nd St, SD'),
                  ),
                  ListTile(
                    leading: Icon(Icons.location_on) ,
                    title: Text("Florida street"),
                    subtitle: Text('24th Street. 14 MD 2nd St, KR'),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              boxShadow: <BoxShadow> [
                BoxShadow(
                  color: Colors.grey[300],
                  blurRadius: 30,
                  spreadRadius: -5
                ),
              ]
            ),
          ),


           Container(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: <Widget>[
                       Radio(
                         value: 0,
                         onChanged: (value){},
                         groupValue: _radioValue,
                       ),
                      Text("Enter custom address" , style: TextStyle(color: Colors.grey[700] , fontSize: 17 , fontWeight: FontWeight.bold) ),
                    ],
                  ),
                ),

                _textfield(context),
                SizedBox(height: 15,),
                _textfield(context),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(height: 15,),
                    _select(),
                    _smalltextfield(context),
                    SizedBox(height: 15,),
                  ],
                )

             ]),
           ),
          
           Column(
              crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
              _buttonFill("Add address"),
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



 _textfield(context){
  return Container(
        alignment: Alignment.center,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  width: 1, color: Colors.grey[300], style: BorderStyle.solid)),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Type someting here',
                contentPadding: EdgeInsets.all(15),
                border: InputBorder.none),
            onChanged: (value) {},
          ),
        ),
      );
 }

 _smalltextfield(context){
  return Container(
        alignment: Alignment.center,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  width: 1, color: Colors.grey[300], style: BorderStyle.solid)),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Pincode',
                contentPadding: EdgeInsets.all(15),
                border: InputBorder.none),
            onChanged: (value) {},
          ),
        ),
      );
 }

 _select(){
  return DropdownButtonHideUnderline(
    child: ButtonTheme(
       alignedDropdown: true,
      child: Container(
        decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.0 , color: Colors.grey[300]),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
      ),
        child: DropdownButton(
        elevation: 3,
        iconEnabledColor: Colors.red,
        items: <String>['Work', 'Home', 'House']
            .map((String val) => DropdownMenuItem<String>(
          value: val,
          child: Text(val)
        )).toList(),
        onChanged: (value) { },
        hint: Text('Home/work')
        ),
      ),
    ),
  );
}