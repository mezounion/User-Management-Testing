import 'sector.dart';
import 'sectorList.dart';

class Person{

  String id, storedKey;
	double worth, spent, balance = 0;
	List<Sector> holons;
  bool acsessStatus = false;
	
	Person(String id, String storedKey, List<Sector> holons) {
		this.id = id;
    this.storedKey = storedKey;
		this.holons = holons;
	}
  
	bool unlock(String key){
    if(key == storedKey){
      acsessStatus = true;
    }
    return acsessStatus;
  }

  void lockUser(){
    acsessStatus = false;
  }

	void setHolons(List<Sector> h) {
		holons = h;
	}
	
	List<Sector> getHolons(){
		return holons;
	}
	
	String getID() {
		return id;
	}
	
	double getBalance() {
		return worth-spent;
	}
	
	double getWorth() {
		return worth;
	}
	
	void setWorth(double value) {
		worth = value;
	}
	
	void spend(double amount) {
		spent += amount;
	}
	
	void returnFromPool(double amount) {
		spent -= amount;
	}
}