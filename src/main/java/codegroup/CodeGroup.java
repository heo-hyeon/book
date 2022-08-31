package codegroup;

public class CodeGroup {

//	 infr_code_group
	private String seq;   //나중에 수정해야하는 경우도 많으니까 int말고 string으로 하는게 편하다.
	private String name;
	
	
//----------------------------
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}