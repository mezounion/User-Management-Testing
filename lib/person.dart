import 'sector.dart';
import 'sectorList.dart';

class Person{

  String id, storedKey;
	double worth, spent, balance = 0;
	List<Sector> sectors;
  bool acsessStatus = false;
	
	Person(String id, String storedKey, List<Sector> sectors) {
		this.id = id;
    this.storedKey = storedKey;
		this.sectors = sectors;
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

	void setSectors(List<Sector> h) {
		sectors = h;
	}
	
	List<Sector> getSectors(){
		return sectors;
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