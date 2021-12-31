import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

String writers = '';
String isiText = '';

Future<http.Response> updateDataNote(
  String writers,
  String isiText) {
    return http.post(
      Uri.parse('https://covindox.herokuapp.com/randomgenerator/data-api'),
      headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'writers' : writers,
      'isiText' : isiText,
    }),
  );
}

class addNote extends StatefulWidget {
  addNote({Key? key}) : super(key: key);

  @override
  _addNoteState createState() => _addNoteState();
}

class _addNoteState extends State<addNote> {
  String _writers = '';
  String _isiText = '';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildWriters(){
    return TextFormField(
      keyboardType: TextInputType.name,
      validator: (value){
        if (value!.isEmpty) {
          return 'Name/Initial is required';
        }
        return null;
      },
      onSaved: (value) {
        _writers = value!;
      },
      style: const TextStyle(
        fontSize: 25.0,
      ),
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.account_circle_outlined),
          border: InputBorder.none,
          hintText: 'Enter your Name/Initial',
          labelText: 'From'),
    );
  }

  Widget _buildIsiText() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Message is required';
        }
        return null;
      },
      onSaved: (value) {
        _isiText = value!;
      },
      style: const TextStyle(
        fontSize: 25.0,
      ),
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.account_box_outlined),
          border: InputBorder.none,
          hintText: 'Enter Your Message',
          labelText: 'Message'),
    );
  }  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(144, 228, 252, 10),
      body: ListView(
        padding : const EdgeInsets.only(top: 80.0, bottom: 20.0, left: 20.0, right: 20.0),
        children: <Widget>[
          Container(
            child: Form(
              key: _formKey,
              child: Column(children: <Widget>[
                _buildWriters(),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                ),
                _buildIsiText(),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                ),
                ElevatedButton(
                  child: const Text(
                    "Submit", 
                    style: TextStyle(fontSize: 25.0),
                  ),
                  onPressed: (){
                    if (!_formKey.currentState!.validate()) {
                      return ;
                    }

                    _formKey.currentState!.save();

                    updateDataNote(
                      _writers, 
                      _isiText)
                      .then((value) {
                        Navigator.pop(context);
                      });
                  },
                )
              ],
              ) 
            )
          )
        ],
      )
    );
  }
}  