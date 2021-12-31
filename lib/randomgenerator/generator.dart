import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class randomNote extends StatefulWidget {
  @override
  _randomNoteState createState() => _randomNoteState();
}

class _randomNoteState extends State<randomNote> {
  final List<Note> _note = <Note>[];

  Future<List<Note>> fetchNote() async {
    var url = 'https://covindox.herokuapp.com/randomgenerator/json';
    var response = await http.get(Uri.parse(url));
    var notes = <Note>[];

    if(response.statusCode == 200) {
      var noteJson = json.decode(response.body);

      for (var n in noteJson) {
        notes.add(Note.fromJson(n));
      }
    }

    print(notes.length);
    return notes;
  }

  @override
  void initState(){
    fetchNote().then((value){
      setState(() {
        _note.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Click"),
          onPressed: (){
            fetchNote();
          },
        )
      )
    );
  }
}

class Note {
  final String writer;
  final String isiText;


  Note ({
  required this.writer,
  required this.isiText,

  });

  factory Note.fromJson(Map<String, dynamic>js) {
    Map<String, dynamic> json = js['fields'];

    return Note(
      writer: json['writer'], 
      isiText: json['isiText']
    );
  }
}