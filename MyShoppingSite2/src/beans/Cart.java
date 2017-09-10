package beans;

import java.util.LinkedList;

public class Cart {

	private LinkedList<Integer> listofproducts;
	
	public LinkedList<Integer> getListofproducts() {
		return listofproducts;
	}

	public void setListofproducts(LinkedList<Integer> listofproducts) {
		this.listofproducts = listofproducts;
	}
	public void addtolist(int randomproduct){
		listofproducts.add(randomproduct);
	}
	public void removefromlist(Integer randomproduct){
		listofproducts.remove(randomproduct);
	}
}
