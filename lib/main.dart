import 'package:comiida/src/pages/initial_page.dart';
import 'package:comiida/src/pages/locationInit_page.dart';
import 'package:comiida/src/pages/locationcustom_page.dart';
import 'package:comiida/src/pages/login_page.dart';
import 'package:comiida/src/pages/phone_page.dart';
import 'package:comiida/src/pages/signup_page.dart';
import 'package:comiida/src/pages/verifyPhone_page.dart';
import 'package:comiida/src/pages/verifyUser_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Comiida App',
      debugShowCheckedModeBanner: false,
      initialRoute:'initial',
      routes:{
        'initial'       :   (BuildContext context) => InitPage(),
        'signup'        :   (BuildContext context) => SignUp(),
        'login'         :   (BuildContext context) => LoginPage(),
        'phone'         :   (BuildContext context) => PhonePage(),
        'verifyphone'   :   (BuildContext context) => VerifyPhonePage(),
        'verifyuser'   :   (BuildContext context) =>  VerifyUserPage(),
        'locationinit'  :   (BuildContext context) => LocationInitPage(),
        'locationCustom':   (BuildContext context) => LocationCustomPage(),
      },
    );
  }
}