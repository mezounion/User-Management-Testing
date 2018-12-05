import 'person.dart';
import 'sector.dart';
import 'sectorList.dart';

class Engine{

	double resourcePool = 0;
  SectorList Sectors = new SectorList();
	
	Engine() {
	}
	
	void distribute(List<Person>population) {
		resetSectors();
		for(Person p in population) {
			for(Sector s in p.getSectors()) {
				s.setPeopleInSector(s.getPeopleInSector() + 1.0/p.getSectors().length);
			}
		}
		for(Person p in population) {
			double tokens = 0;
			for(Sector h in p.getSectors()) {
				tokens += population.length/h.getPeopleInSector();
			}
			p.setWorth(tokens/p.getSectors().length);
		}
	}
	
	void resetSectors() {
		Sectors.Art.setPeopleInSector(0);
		Sectors.Construction.setPeopleInSector(0);
		Sectors.Energy.setPeopleInSector(0);
		Sectors.Judicial.setPeopleInSector(0);
		Sectors.Military.setPeopleInSector(0);
		Sectors.Education.setPeopleInSector(0);
		Sectors.Reserve.setPeopleInSector(0);
		Sectors.Crypto.setPeopleInSector(0);
		Sectors.Food.setPeopleInSector(0);
		Sectors.Transportation.setPeopleInSector(0);
		Sectors.Materials.setPeopleInSector(0);
		Sectors.Health.setPeopleInSector(0);
		Sectors.Industrials.setPeopleInSector(0);
	}
	
	void addToPool(double amount) {
		resourcePool += amount;
	}
	
}