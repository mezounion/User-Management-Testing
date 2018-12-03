import 'dart:async';
import 'dart:io';
import 'dart:convert';

class InputHandler{
  String getInput(){
    String s = readLine().toString().trim();
    //Add more filtering as issues arise
  }

  Stream readLine() => stdin
  .transform(utf8.decoder)
  .transform(new LineSplitter());
}