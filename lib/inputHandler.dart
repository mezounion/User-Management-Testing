import 'dart:async';
import 'dart:io';
import 'dart:convert';

class InputHandler{
  String getInput(){
    String s = readLine().toString().trim();
    //Add more filtering as issues arise
  }

  compareStrings(String s1, String s2) async {
    if(s1 == s2){
      return true;
    }
    else{
      return false;
    }
  }

  Stream readLine() => stdin
  .transform(utf8.decoder)
  .transform(new LineSplitter());
}