import 'user.dart';
import 'accountManager.dart';
import 'dart:io';
import 'databaseHandler.dart';

File storedUsers = new File('lib/userList.txt');
List<User> userList = new List<User>();
List<String> lines = storedUsers.readAsLinesSync();

void listInit(){
  for(String line in lines){
    userList.add(new User(line.substring(0,line.indexOf(',')), line.substring(line.indexOf(',') + 1, line.length)));
  }
  //retrieve info from database and generate a list of users
}

void main(){
  listInit();
  AccountManager accMgr = new AccountManager(userList);
  DatabaseHandler db = new DatabaseHandler();
  //db.loadTest();
  db.dbTest();
  //print(accMgr.createUser('testUser', 'storedKey123'));
}