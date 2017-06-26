package vn.airline.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "journey")
public class Journey implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "locationTo")
	private String locationTo;

	@Column(name = "locationFrom")
	private String locationFrom;
	
	@OneToMany(mappedBy = "journey", fetch = FetchType.EAGER, cascade = CascadeType.REMOVE)
    private List<Flight> flight = new ArrayList<Flight>();

	public Journey() {
	}

	public Journey(String locationTo, String locationFrom, List<Flight> flight) {
		super();
		this.locationTo = locationTo;
		this.locationFrom = locationFrom;
		this.flight = flight;
	}
	
	public Journey(int id, String locationTo, String locationFrom) {
		super();
		this.id = id;
		this.locationTo = locationTo;
		this.locationFrom = locationFrom;
	}
	
	

	public Journey(String locationTo, String locationFrom) {
		super();
		this.locationTo = locationTo;
		this.locationFrom = locationFrom;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLocationTo() {
		return locationTo;
	}

	public void setLocationTo(String locationTo) {
		this.locationTo = locationTo;
	}

	public String getLocationFrom() {
		return locationFrom;
	}

	public void setLocationFrom(String locationFrom) {
		this.locationFrom = locationFrom;
	}

	public List<Flight> getFlight() {
		return flight;
	}

	public void setFlight(List<Flight> flight) {
		this.flight = flight;
	}


	
	
	

}
