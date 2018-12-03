class User {
  String ID;
  String storedKey = 'Test123';

  User(String ID, String storedKey){
    this.ID= ID;
    this.storedKey = storedKey;
    //Write Key to database here
  }

  String getID(){
    return ID;
  }

  bool logIn(String authKey){
    if(authKey == storedKey){
      return true;
    }
    else{
      return false;
    }
  }
}