import 'user.dart';
import 'dart:io';

class AccountManager {
  List<User> userList;

  AccountManager(List<User> userList){
    this.userList = userList;
  }

  bool isNameTaken(String username){
    bool nameTaken = false;
    for(int i = 0; i < userList.length; i++){
      if(userList[i].getID() == username){
        nameTaken = true;
         i = userList.length;
      }
    }
    return nameTaken;
  }

  bool createUser(String ID, String storedKey){
    bool IsValidUser = !isNameTaken(ID);
    if(IsValidUser){
      userList.add(new User(ID, storedKey));
      updateList();
    } 
    return IsValidUser;
  }

//dont allow not 
  List<User> updateList(){
    File storedUsers = new File('lib/userList.txt');
    List<String> lines = new List<String>();
    for(User u in userList){
      print(u.getID() + ',' + u.storedKey);
      lines.add(u.getID() + ',' + u.storedKey);
    }
    storedUsers.writeAsStringSync(lines.join('\n'));
    return userList;
  }

}