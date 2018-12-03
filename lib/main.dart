import 'user.dart';
import 'accountManager.dart';
import 'inputHandler.dart';
import 'dart:io';

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
  InputHandler input = new InputHandler();
  AccountManager accMgr = new AccountManager(userList);
  print(accMgr.createUser('testUser', 'storedKey123'));
  /*
  dumpster fire, ignore for now
  while(true){
    //placeholder logic that relies on commandline instead of web based commands
    String command = stdin.readLineSync();
    if(input.compareStrings(command, "newUser")){
      print('1');
      String userInfo = stdin.readLineSync();
      int breakPoint = userInfo.indexOf(",");
      accMgr.createUser(userInfo.substring(0,breakPoint), userInfo.substring(breakPoint,userInfo.length));
      userList = accMgr.updateList();
    }
  }
  */
}