import 'holon.dart';
import 'holonList.dart';

class Person{

  String id, storedKey;
	double worth, spent, balance = 0;
	List<Holon> holons;
  bool acsessStatus = false;
	
	Person(String id, String storedKey, List<Holon> holons) {
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

	void setHolons(List<Holon> h) {
		holons = h;
	}
	
	List<Holon> getHolons(){
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