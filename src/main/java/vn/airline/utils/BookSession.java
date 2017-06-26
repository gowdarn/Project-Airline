package vn.airline.utils;

import java.io.Serializable;

public class BookSession implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int numPeople;
	private int numChildren;
	private int flightGoId;
	private int flightOnId;
	private int typeGo;
	private int typeOn;
	private boolean isRound;
	

	public BookSession(int numPeople, int numChildren, int flightGoId, int flightOnId, int typeGo, int typeOn,
			boolean isRound) {
		super();
		this.numPeople = numPeople;
		this.numChildren = numChildren;
		this.flightGoId = flightGoId;
		this.flightOnId = flightOnId;
		this.typeGo = typeGo;
		this.typeOn = typeOn;
		this.isRound = isRound;
	}
	public BookSession() {
		super();
	}
	public int getNumPeople() {
		return numPeople;
	}
	public void setNumPeople(int numPeople) {
		this.numPeople = numPeople;
	}
	public int getNumChildren() {
		return numChildren;
	}
	public void setNumChildren(int numChildren) {
		this.numChildren = numChildren;
	}
	public int getFlightGoId() {
		return flightGoId;
	}
	public void setFlightGoId(int flightGoId) {
		this.flightGoId = flightGoId;
	}
	public int getFlightOnId() {
		return flightOnId;
	}
	public void setFlightOnId(int flightOnId) {
		this.flightOnId = flightOnId;
	}
	public int getTypeGo() {
		return typeGo;
	}
	public void setTypeGo(int typeGo) {
		this.typeGo = typeGo;
	}
	public int getTypeOn() {
		return typeOn;
	}
	public void setTypeOn(int typeOn) {
		this.typeOn = typeOn;
	}
	public boolean isRound() {
		return isRound;
	}
	public void setRound(boolean isRound) {
		this.isRound = isRound;
	}
	
	
	
	
	
	
}
