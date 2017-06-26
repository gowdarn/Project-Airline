package vn.airline.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "flight")
public class Flight implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@ManyToOne(fetch = FetchType.EAGER)
	private Airline airline;
	
	@ManyToOne(fetch = FetchType.EAGER)
	private Journey journey;

	@OneToMany(mappedBy = "flight", fetch = FetchType.EAGER, cascade = CascadeType.REMOVE)
    private List<Ticket> ticket = new ArrayList<Ticket>();
	
	@DateTimeFormat(pattern = "dd/MM/yyyy hh:mm:ss")
	@Column(name = "startTime")
	@Temporal(TemporalType.TIMESTAMP)
	private Date startTime;
	
	@DateTimeFormat(pattern = "dd/MM/yyyy hh:mm:ss")
	@Column(name = "endTime")
	@Temporal(TemporalType.TIMESTAMP)
	private Date endTime;
	
	@Column(name = "priceEco")
	private double priceEco;
	
	@Column(name = "priceVip")
	private double priceVip;
	
	private String code;
	

	
	private int bookedEco;
	
	private int bookedVip;
	
	public Flight() {
		super();
	}
	
	public Flight(Airline airline, Journey journey, Date startTime, Date endTime, double priceEco,
			double priceVip, String code) {
		super();
		this.airline = airline;
		this.journey = journey;
		this.startTime = startTime;
		this.endTime = endTime;
		this.priceEco = priceEco;
		this.priceVip = priceVip;
		this.code = code;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Airline getAirline() {
		return airline;
	}

	public void setAirline(Airline airline) {
		this.airline = airline;
	}

	public Journey getJourney() {
		return journey;
	}

	public void setJourney(Journey journey) {
		this.journey = journey;
	}

	public List<Ticket> getTicket() {
		return ticket;
	}

	public void setTicket(List<Ticket> ticket) {
		this.ticket = ticket;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	
	
	

	public double getPriceEco() {
		return priceEco;
	}



	public void setPriceEco(double priceEco) {
		this.priceEco = priceEco;
	}



	public double getPriceVip() {
		return priceVip;
	}



	public void setPriceVip(double priceVip) {
		this.priceVip = priceVip;
	}

	public int getBookedEco() {
		return bookedEco;
	}

	public void setBookedEco(int bookedEco) {
		this.bookedEco = bookedEco;
	}

	public int getBookedVip() {
		return bookedVip;
	}

	public void setBookedVip(int bookedVip) {
		this.bookedVip = bookedVip;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	
	
	
	
	
	
	
	
}
