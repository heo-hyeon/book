package nov.infra.modules.member;

import org.springframework.web.multipart.MultipartFile;

public class Member {

		private String seq;
		private String memberID;
		private String pwd;
		private String pwdCheck;
		private String memberName;
		private String memberName_en;
		private String dob;
		private Integer telecom;
		private String phone;
		private String email;
		private Integer email_code;
		private Integer region;
		private Integer certifiNY;
		private Integer genre;
		private Integer useNY;
		private Integer delNY;
		
		// 이미지 업로드
		private String type;
		private String defaultNy;
		private Integer sort;
		private String path;
		private String originalName;
		private String uuidName;
		private String ext;
		private String size;
		private String delNy;
		private String pseq;
		private String regIp;
		private String regSeq;
		private String regDeviceCd;
		private String regDateTime;
		private String regDateTimeSvr;
		private MultipartFile[] uploadedImage;

		//		book 관련
 		private String name;
		private String writer_name;
		private String sub_title;
		private String category;
		private String keyword;
		
		public String getSeq() {
			return seq;
		}
		public void setSeq(String seq) {
			this.seq = seq;
		}
		public String getMemberID() {
			return memberID;
		}
		public void setMemberID(String memberID) {
			this.memberID = memberID;
		}
		public String getPwd() {
			return pwd;
		}
		public void setPwd(String pwd) {
			this.pwd = pwd;
		}
		
		public String getPwdCheck() {
			return pwdCheck;
		}
		public void setPwdCheck(String pwdCheck) {
			this.pwdCheck = pwdCheck;
		}
		public String getMemberName() {
			return memberName;
		}
		public void setMemberName(String memberName) {
			this.memberName = memberName;
		}
		public String getMemberName_en() {
			return memberName_en;
		}
		public void setMemberName_en(String memberName_en) {
			this.memberName_en = memberName_en;
		}
		public String getDob() {
			return dob;
		}
		public void setDob(String dob) {
			this.dob = dob;
		}
		public Integer getTelecom() {
			return telecom;
		}
		public void setTelecom(Integer telecom) {
			this.telecom = telecom;
		}
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public Integer getEmail_code() {
			return email_code;
		}
		public void setEmail_code(Integer email_code) {
			this.email_code = email_code;
		}
		public Integer getRegion() {
			return region;
		}
		public void setRegion(Integer region) {
			this.region = region;
		}
		public Integer getCertifiNY() {
			return certifiNY;
		}
		public void setCertifiNY(Integer certifiNY) {
			this.certifiNY = certifiNY;
		}
		
		public Integer getGenre() {
			return genre;
		}
		public void setGenre(Integer genre) {
			this.genre = genre;
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
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getWriter_name() {
			return writer_name;
		}
		public void setWriter_name(String writer_name) {
			this.writer_name = writer_name;
		}
		public String getSub_title() {
			return sub_title;
		}
		public void setSub_title(String sub_title) {
			this.sub_title = sub_title;
		}
		public String getCategory() {
			return category;
		}
		public void setCategory(String category) {
			this.category = category;
		}
		public String getKeyword() {
			return keyword;
		}
		public void setKeyword(String keyword) {
			this.keyword = keyword;
		}
		public String getPseq() {
			return pseq;
		}
		public void setPseq(String pseq) {
			this.pseq = pseq;
		}
		public Integer getSort() {
			return sort;
		}
		public void setSort(Integer sort) {
			this.sort = sort;
		}
		public String getPath() {
			return path;
		}
		public void setPath(String path) {
			this.path = path;
		}
		public String getOriginalName() {
			return originalName;
		}
		public void setOriginalName(String originalName) {
			this.originalName = originalName;
		}
		public String getUuidName() {
			return uuidName;
		}
		public void setUuidName(String uuidName) {
			this.uuidName = uuidName;
		}
		public String getExt() {
			return ext;
		}
		public void setExt(String ext) {
			this.ext = ext;
		}
		public MultipartFile[] getUploadedImage() {
			return uploadedImage;
		}
		public void setUploadedImage(MultipartFile[] uploadedImage) {
			this.uploadedImage = uploadedImage;
		}
		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
		}
		public String getDefaultNy() {
			return defaultNy;
		}
		public void setDefaultNy(String defaultNy) {
			this.defaultNy = defaultNy;
		}
		public String getSize() {
			return size;
		}
		public void setSize(String size) {
			this.size = size;
		}
		public String getDelNy() {
			return delNy;
		}
		public void setDelNy(String delNy) {
			this.delNy = delNy;
		}
		public String getRegIp() {
			return regIp;
		}
		public void setRegIp(String reglp) {
			this.regIp = reglp;
		}
		public String getRegSeq() {
			return regSeq;
		}
		public void setRegSeq(String regSeq) {
			this.regSeq = regSeq;
		}
		public String getRegDeviceCd() {
			return regDeviceCd;
		}
		public void setRegDevideCd(String regDevideCd) {
			this.regDeviceCd = regDevideCd;
		}
		public String getRegDateTime() {
			return regDateTime;
		}
		public void setRegDateTime(String regDateTime) {
			this.regDateTime = regDateTime;
		}
		public String getRegDateTimeSvr() {
			return regDateTimeSvr; 
		}
		public void setRegDateTimeSvr(String regDateTimeSvr) {
			this.regDateTimeSvr = regDateTimeSvr;
		}
}
