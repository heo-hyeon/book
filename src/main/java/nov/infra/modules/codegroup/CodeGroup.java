package nov.infra.modules.codegroup;

import java.util.Date;

public class CodeGroup {
	
	
	private String seq;
	private String name;
	private String name_en;
	private Integer code_count;
	private String reg_date;
	private String mod_date;
	private String useNY;
	private String delNY;
	
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
	public String getName_en() {
		return name_en;
	}
	public void setName_en(String name_en) {
		this.name_en = name_en;
	}
	public Integer getCode_count() {
		return code_count;
	}
	public void setCode_count(Integer code_count) {
		this.code_count = code_count;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getMod_date() {
		return mod_date;
	}
	public void setMod_date(String mod_date) {
		this.mod_date = mod_date;
	}
	public String getUseNY() {
		return useNY;
	}
	public void setUseNY(String useNY) {
		this.useNY = useNY;
	}
	public String getDelNY() {
		return delNY;
	}
	public void setDelNY(String delNY) {
		this.delNY = delNY;
	}
}