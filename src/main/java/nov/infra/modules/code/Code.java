package nov.infra.modules.code;

import java.util.Date;

public class Code {

		private String seq;
		private String ccg_seq;
		private String name;
		private Integer code;
		private String codename_ko;
		private String codename_en;
		private Integer useNY;
		private Integer delNY;
		private Date reg_date;
		private Date mod_date;
		
		public String getSeq() {
			return seq;
		}
		public void setSeq(String seq) {
			this.seq = seq;
		}
		public String getCcg_seq() {
			return ccg_seq;
		}
		public void setCcg_seq(String ccg_seq) {
			this.ccg_seq = ccg_seq;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public Integer getCode() {
			return code;
		}
		public void setCode(Integer code) {
			this.code = code;
		}
		public String getCodename_ko() {
			return codename_ko;
		}
		public void setCodename_ko(String codename_ko) {
			this.codename_ko = codename_ko;
		}
		public String getCodename_en() {
			return codename_en;
		}
		public void setCodename_en(String codename_en) {
			this.codename_en = codename_en;
		}
		public Integer getUseNY() {
			return useNY;
		}
		public void setUseNY(Integer useNY) {
			this.useNY = useNY;
		}
		public Integer getDelNY() {
			return delNY;
		}
		public void setDelNY(Integer delNY) {
			this.delNY = delNY;
		}
		public Date getReg_date() {
			return reg_date;
		}
		public void setReg_date(Date reg_date) {
			this.reg_date = reg_date;
		}
		public Date getMod_date() {
			return mod_date;
		}
		public void setMod_date(Date mod_date) {
			this.mod_date = mod_date;
		}
}
