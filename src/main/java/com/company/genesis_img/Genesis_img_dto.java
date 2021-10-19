package com.company.genesis_img;

public class Genesis_img_dto {
	private int no;
	private String title;
	private String name;
	private String description;
	private String img;
	
	public Genesis_img_dto() { super(); }

	public Genesis_img_dto(int no, String title, String name, String description, String img) {
		super();
		this.no = no;
		this.title = title;
		this.name = name;
		this.description = description;
		this.img = img;
	}

	@Override
	public String toString() {
		return "Genesis_img_dto [no=" + no + ", title=" + title + ", name=" + name + ", description=" + description
				+ ", img=" + img + "]";
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
}
