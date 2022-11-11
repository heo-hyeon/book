package nov.infra.modules.book;

public class BookVo {
	
	private String name;
	private String seq;
	
	private String fvseq;
	private String fvName;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getFvseq() {
		return fvseq;
	}
	public void setFvseq(String fvseq) {
		this.fvseq = fvseq;
	}
	public String getFvName() {
		return fvName;
	}
	public void setFvName(String fvName) {
		this.fvName = fvName;
	}
	
}
