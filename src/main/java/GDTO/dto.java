package GDTO;

public class dto {
	private String name;
	private String email;
	private String pass;
	private String phone;
	private String address;
	private String car;
	
	public dto() { super(); }
	
	public dto(String name, String email, String pass, String phone, String address, String car) {
		super();
		this.name = name;
		this.email = email;
		this.pass = pass;
		this.phone = phone;
		this.address = address;
		this.car = car;
	}
	@Override
	public String toString() {
		return "dto [name=" + name + ", email=" + email + ", pass=" + pass + ", phone=" + phone + ", address=" + address
				+ ", car=" + car + "]";
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
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCar() {
		return car;
	}
	public void setCar(String car) {
		this.car = car;
	}
	
	
}

