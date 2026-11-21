package Entity;

public class Register {
	private String Name;
	private int Id;
	private String Qualification;
	private int percentage;
	private String Address;
	private String Dept;
	
	
	public String getQualification() {
		return Qualification;
	}
	public void setQualification(String qualification) {
		this.Qualification = qualification;
	}
	public int getPercentage() {
		return percentage;
	}
	public void setPercentage(int percentage) {
		this.percentage = percentage;
	}
	
	public String getName() {
		return Name;
	}
	public void setName(String Name) {
		this.Name = Name;
	}
	public int getId() {
		return Id;
	}
	public void setId(int Id) {
		this.Id = Id;
	}

	public String getAddress() {
		return Address;
	}
	public void setAddress(String Address) {
		this.Address = Address;
	}
	public String getDept() {
		return Dept;
	}
	public void setDept(String Dept) {
		this.Dept = Dept;
	}
	

}
