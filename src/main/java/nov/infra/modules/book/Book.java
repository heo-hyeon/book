package nov.infra.modules.book;

import org.springframework.web.multipart.MultipartFile;

public class Book {
	
	private String seq;
	private String name;
	private String sub_title;
	private String title;
	private String explanation;
	private String publisher;
	private String category;
	private String writer_name;
	private String bookWriter;
	private String writer_exp;
	private String keyword;
	private String fvName;
	private String fvTitle;
	private String fvSub_title;
	private String fvPublisher;
	private String fvBookWriter;
	private String fvExplanation;
	private String fvCategory;
	private String fvKeyword;
	private String bookSeq;
	private String memberSeq;
	private String memberID;
	private String reviewContents;
	
	
	//이미지 업로드
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
	
	public String getWriter_name() {
		return writer_name;
	}
	public String getBookWriter() {
		return bookWriter;
	}
	public void setBookWriter(String bookWriter) {
		this.bookWriter = bookWriter;
	}
	public void setWriter_name(String writer_name) {
		this.writer_name = writer_name;
	}
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
	
	public String getSub_title() {
		return sub_title;
	}
	public void setSub_title(String sub_title) {
		this.sub_title = sub_title;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getExplanation() {
		return explanation;
	}
	public void setExplanation(String explanation) {
		this.explanation = explanation;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getWriter_exp() {
		return writer_exp;
	}
	public void setWriter_exp(String writer_exp) {
		this.writer_exp = writer_exp;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getUuidName() {
		return uuidName;
	}
	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
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
	public Integer getSort() {
		return sort;
	}
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public String getOriginalName() {
		return originalName;
	}
	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}
	public String getExt() {
		return ext;
	}
	public void setExt(String ext) {
		this.ext = ext;
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
	public String getPseq() {
		return pseq;
	}
	public void setPseq(String pseq) {
		this.pseq = pseq;
	}
	public String getRegIp() {
		return regIp;
	}
	public void setRegIp(String regIp) {
		this.regIp = regIp;
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
	public void setRegDeviceCd(String regDeviceCd) {
		this.regDeviceCd = regDeviceCd;
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
	public MultipartFile[] getUploadedImage() {
		return uploadedImage;
	}
	public void setUploadedImage(MultipartFile[] uploadedImage) {
		this.uploadedImage = uploadedImage;
	}
	public String getBookSeq() {
		return bookSeq;
	}
	public void setBookSeq(String bookSeq) {
		this.bookSeq = bookSeq;
	}
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	public String getReviewContents() {
		return reviewContents;
	}
	public void setReviewContents(String reviewContents) {
		this.reviewContents = reviewContents;
	}
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}
	public String getFvName() {
		return fvName;
	}
	public void setFvName(String fvName) {
		this.fvName = fvName;
	}
	public String getFvTitle() {
		return fvTitle;
	}
	public void setFvTitle(String fvTitle) {
		this.fvTitle = fvTitle;
	}
	public String getFvSub_title() {
		return fvSub_title;
	}
	public void setFvSub_title(String fvSub_title) {
		this.fvSub_title = fvSub_title;
	}
	public String getFvPublisher() {
		return fvPublisher;
	}
	public void setFvPublisher(String fvPublisher) {
		this.fvPublisher = fvPublisher;
	}
	public String getFvBookWriter() {
		return fvBookWriter;
	}
	public void setFvBookWriter(String fvBookWriter) {
		this.fvBookWriter = fvBookWriter;
	}
	public String getFvExplanation() {
		return fvExplanation;
	}
	public void setFvExplanation(String fvExplanation) {
		this.fvExplanation = fvExplanation;
	}
	public String getFvCategory() {
		return fvCategory;
	}
	public void setFvCategory(String fvCategory) {
		this.fvCategory = fvCategory;
	}
	public String getFvKeyword() {
		return fvKeyword;
	}
	public void setFvKeyword(String fvKeyword) {
		this.fvKeyword = fvKeyword;
	}
	
}
