import 'package:objectdb/objectdb.dart';
import 'user.dart';

//Add getPopulation and interate datbase functionality into engine and everything else
class DatabaseHandler{

  var db = ObjectDB('lib/UserData.db');
  DatabaseHandler() {}

  Future<User> getUser(String ID) async{
    db.open();

    List<Map> map = new List<Map>();
    map = await db.find({'ID': ID});
    String storedKey = map[0].values.toList()[2];
    User user = new User(ID, storedKey);
    //add shit to actually configure user

    // close db
    await db.close();
    return user;
  }

  void loadTest() async{
    db.open();

    // insert documents
    await db.insertMany([
      {
        "ID": "Jackson",
        "Key" : "GxIi6EdXHC",
        "Sector" : "Und",
        "Tokens" : 0

      },
      {
        "ID": "Tom",
        "Key" : "c7jsOAmORq",
        "Sector" : "Und",
        "Tokens" : 0

      },
      {
        "ID": "Cal",
        "Key" : "TooSM6m5xP",
        "Sector" : "Und",
        "Tokens" : 0

      },
    ]);

    await db.close();
  }

  void dbTest() async{
    db.open();

    // find documents, find way to locate specific values
    List<Map> map = new List<Map>();
    map = await db.find({'ID': "Cal"});
    print(map[0].values.toList());

    // close db
    await db.close();
  }
}