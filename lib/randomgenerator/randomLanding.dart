// ignore_for_file: unnecessary_new

import 'package:covindox_flutter/user/login.dart';
import 'package:covindox_flutter/user/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:covindox_flutter/user/login.dart';
import 'package:covindox_flutter/randomgenerator/generator.dart';

class randomLanding extends StatelessWidget {
  const randomLanding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    child:
    return Scaffold(
      backgroundColor: Color.fromRGBO(144, 228, 252, 10),
      body: Padding(
        padding: EdgeInsets.only(top: 5.0),
        child: Container(
          child: Column(
            children: <Widget>[
              new Container(
                margin: EdgeInsets.only(top: 80.0),
                alignment: Alignment.topCenter,
                child: Text(
                  "Hi There\n#StaySafe!",
                  style: GoogleFonts.novaRound(
                    textStyle: TextStyle(color: Colors.black, fontSize: 50.0),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            new Container(
              margin: EdgeInsets.only(top: 30.0),
                alignment: Alignment.topCenter,
                child: Text(
                  "We know that it's been a tough year for us.",
                  style: GoogleFonts.novaRound(
                    textStyle: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                  textAlign: TextAlign.center,
                ),
            ),
            new Container(
              margin: EdgeInsets.only(top: 7.0),
                alignment: Alignment.topCenter,
                child: Text(
                  "We just want you to know that:",
                  style: GoogleFonts.novaRound(
                    textStyle: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                  textAlign: TextAlign.center,
                ),
            ),
            new Container(
              margin: EdgeInsets.only(top: 26.0),
                alignment: Alignment.topCenter,
                child: Text(
                  "We are all here for You",
                  style: GoogleFonts.novaRound(
                    textStyle: TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  textAlign: TextAlign.center,
                ),
            ),
            new Container(
              margin: EdgeInsets.only(top: 26.0, left: 20, right: 20),
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                  onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (Buildercontext) => randomNote()),
                  );
                },
                  color: HexColor("#13f4b0"),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Text(
                    "Let's see what stranger\nleft for me",
                    style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
                  )
                )
            ),
            new Container(
              margin: EdgeInsets.only(top: 20.0, left: 20, right: 20),
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                  onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (Buildercontext) => Login()),
                  );
                },
                  color: HexColor("#F99EBE"),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Text(
                    "Cheer others up!",
                    style: TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold),
                  )
                )
            ) 
            ],
          )
        )
      )
    );
  }
}
