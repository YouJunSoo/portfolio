package GDTO;

public class GMakerDto {
	private String name;

	public GMakerDto() { super(); }

	public GMakerDto(String name) { super(); this.name = name; }

	@Override
	public String toString() {
		return "GMakerDto [name=" + name + "]";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
