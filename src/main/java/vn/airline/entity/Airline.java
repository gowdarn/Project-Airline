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
@Table(name = "airline")
public class Airline implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "name")
	private String name;

	@OneToMany(mappedBy = "airline", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
	private List<Flight> flight = new ArrayList<Flight>();

	private int numEco;

	private int numVip;

	public Airline() {
		super();
	}

	public Airline(String name, int numEco, int numVip) {
		super();
		this.name = name;
		this.numEco = numEco;
		this.numVip = numVip;
	}
	

	public Airline(int id, String name, int numEco, int numVip) {
		super();
		this.id = id;
		this.name = name;
		this.numEco = numEco;
		this.numVip = numVip;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Flight> getFlight() {
		return flight;
	}

	public void setFlight(List<Flight> flight) {
		this.flight = flight;
	}

	public int getNumEco() {
		return numEco;
	}

	public void setNumEco(int numEco) {
		this.numEco = numEco;
	}

	public int getNumVip() {
		return numVip;
	}

	public void setNumVip(int numVip) {
		this.numVip = numVip;
	}

}
