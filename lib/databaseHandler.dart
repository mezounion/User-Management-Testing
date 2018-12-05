import 'package:objectdb/objectdb.dart';

class DatabaseHandler{

  var db = ObjectDB('lib/UserData.db');
  DatabaseHandler() {}

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

    // find documents
    print(await db.find({'ID': "Cal"}));

    // close db
    await db.close();
  }
}