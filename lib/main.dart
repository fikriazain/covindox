// ignore_for_file: unnecessary_new

import 'package:covindox_flutter/auth_user.dart';
import 'package:covindox_flutter/user/userprofile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'user/login.dart';
import 'user/register.dart';

import 'package:covindox_flutter/randomgenerator/randomLanding.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (_) {
          CookieRequest request = CookieRequest();

          return request;
        },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
          routes: {"/login": (BuildContext context) => const Login()},
        ));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    request.init(context);
    child:
    return Scaffold(
      backgroundColor: Color.fromRGBO(144, 228, 252, 10),
      body: Padding(
        padding: EdgeInsets.only(top: 5.0),
        child: Container(
            child: Column(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(top: 120.0),
              alignment: Alignment.topCenter,
              child: new Text(
                "Welcome to\nCovindox",
                style: GoogleFonts.novaRound(
                  textStyle: TextStyle(color: Colors.white, fontSize: 60.0),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            new Container(
              margin: EdgeInsets.only(top: 80.0),
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 70),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (Buildercontext) => Login()),
                  );
                },
                color: HexColor("#ff9cbc"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Text(
                  "Login",
                  style: TextStyle(color: HexColor("#605c5c"), fontSize: 40.0),
                ),
              ),
            ),
            new Container(
              margin: EdgeInsets.only(top: 50.0),
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                },
                color: HexColor("#e8fc9c"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Text(
                  "Register",
                  style: TextStyle(color: HexColor("#605c5c"), fontSize: 40.0),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
