class Sector{
	
	String name;
	double peopleInSector = 0;
	
	Sector(String name) {
		this.name = name;
	}
	
	double getPeopleInSector() {
		return peopleInSector;
	}
	
	void setPeopleInSector(double pop) {
		peopleInSector = pop;
	}
}