package nov.infra.modules.book;

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
	
}
