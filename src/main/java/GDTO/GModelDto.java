package GDTO;

public class GModelDto {
	private String model;

	public GModelDto() { super(); }

	public GModelDto(String model) {
		super();
		this.model = model;
	}

	@Override
	public String toString() {
		return "GModelDto [model=" + model + "]";
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}	
}
