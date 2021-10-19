package GDTO;

public class GModel_Info_DTO {
	private int no;
	private String model;
	private String modelInfo;
	private String displacement;
	private String horsepower;
	private String mileage;
	private String price;
	
	public GModel_Info_DTO() { super(); }

	public GModel_Info_DTO(int no, String model, String modelInfo, String displacement, String horsepower,
			String mileage, String price) {
		super();
		this.no = no;
		this.model = model;
		this.modelInfo = modelInfo;
		this.displacement = displacement;
		this.horsepower = horsepower;
		this.mileage = mileage;
		this.price = price;
	}

	@Override
	public String toString() {
		return "GModel_Info_DTO [no=" + no + ", model=" + model + ", modelInfo=" + modelInfo + ", displacement="
				+ displacement + ", horsepower=" + horsepower + ", mileage=" + mileage + ", price=" + price + "]";
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getModelInfo() {
		return modelInfo;
	}

	public void setModelInfo(String modelInfo) {
		this.modelInfo = modelInfo;
	}

	public String getDisplacement() {
		return displacement;
	}

	public void setDisplacement(String displacement) {
		this.displacement = displacement;
	}

	public String getHorsepower() {
		return horsepower;
	}

	public void setHorsepower(String horsepower) {
		this.horsepower = horsepower;
	}

	public String getMileage() {
		return mileage;
	}

	public void setMileage(String mileage) {
		this.mileage = mileage;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
}
