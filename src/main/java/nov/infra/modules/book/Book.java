package nov.infra.modules.book;

import org.springframework.web.multipart.MultipartFile;

public class Book {
	
	private String seq;
	private String name;
	private String subTitle;
	private String title;
	private String explanation;
	private String publisher;
	private String category;
	private String writerName;
	private String bookWriter;
	private String writerExp;
	private String keyword;
	private String fvName; 
	private String fvTitle;
	private String fvSubTitle;
	private String fvPublisher;
	private String fvCategory;
	private String fvExplanation;
	private String fvBookWriter;
	private String fvKeyword;
	private String fvseq;
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
	public String getSubTitle() {
		return subTitle;
	}
	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
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
	public String getWriterName() {
		return writerName;
	}
	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}
	public String getBookWriter() {
		return bookWriter;
	}
	public void setBookWriter(String bookWriter) {
		this.bookWriter = bookWriter;
	}
	public String getWriterExp() {
		return writerExp;
	}
	public void setWriterExp(String writerExp) {
		this.writerExp = writerExp;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
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
	public String getFvSubTitle() {
		return fvSubTitle;
	}
	public void setFvSubTitle(String fvSubTitle) {
		this.fvSubTitle = fvSubTitle;
	}
	public String getFvPublisher() {
		return fvPublisher;
	}
	public void setFvPublisher(String fvPublisher) {
		this.fvPublisher = fvPublisher;
	}
	public String getFvCategory() {
		return fvCategory;
	}
	public void setFvCategory(String fvCategory) {
		this.fvCategory = fvCategory;
	}
	public String getFvExplanation() {
		return fvExplanation;
	}
	public void setFvExplanation(String fvExplanation) {
		this.fvExplanation = fvExplanation;
	}
	public String getFvBookWriter() {
		return fvBookWriter;
	}
	public void setFvBookWriter(String fvBookWriter) {
		this.fvBookWriter = fvBookWriter;
	}
	public String getFvKeyword() {
		return fvKeyword;
	}
	public void setFvKeyword(String fvKeyword) {
		this.fvKeyword = fvKeyword;
	}
	public String getFvseq() {
		return fvseq;
	}
	public void setFvseq(String fvseq) {
		this.fvseq = fvseq;
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
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}
	public String getReviewContents() {
		return reviewContents;
	}
	public void setReviewContents(String reviewContents) {
		this.reviewContents = reviewContents;
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
}
