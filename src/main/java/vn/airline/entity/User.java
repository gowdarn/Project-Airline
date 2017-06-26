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
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "user")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@NotEmpty
	@Column(name = "name")
	private String name;

	@NotEmpty
	@Email
	@Column(name = "email")
	private String email;
	
	@NotEmpty
	@Size(min=6)
	@Column(name = "password")
	private String password;

	@Transient
	private String confirmPassword;
	
	@NotEmpty
	@NotNull
	@Column(name = "phone")
	private String phone;

	@Column(name = "point", nullable = true)
	private int point;

	@Column(name = "role")
	private int roles;
	
	
	@Column(name = "birthDay")
	private Date birthDay;
	
	@Column(name = "address")
	private String address;
	
	
	@OneToMany(mappedBy = "user", fetch = FetchType.EAGER, cascade = CascadeType.REMOVE)
	private List<Ticket> listTicket = new ArrayList<>();

	public User() {
		
	}

	public User(String name, String email, String password, String phone, int point, int roles,
			Date birthDay, String address) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.phone = phone;
		this.point = point;
		this.roles = roles;
		this.birthDay = birthDay;
		this.address = address;
	}
	
	
	
	

	public User(int id, String name, String password, String email, String phone, String address) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.email = email;
		this.phone = phone;
		this.address = address;
	}

	public User(String email, String password) {
		super();
		this.email = email;
		this.password = password;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public int getRoles() {
		return roles;
	}

	public void setRoles(int roles) {
		this.roles = roles;
	}

	public String getPhone() {
		return phone;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(Date birthDay) {
		this.birthDay = birthDay;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}



	public List<Ticket> getListTicket() {
		return listTicket;
	}

	public void setListTicket(List<Ticket> listTicket) {
		this.listTicket = listTicket;
	}
	
	

	
	
	
}
