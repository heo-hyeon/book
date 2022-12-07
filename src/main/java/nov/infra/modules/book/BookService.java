package nov.infra.modules.book;

import java.util.List;

public interface BookService {
	
	public Book selectOne(BookVo vo) throws Exception;
	
	public List<Book> selectList(BookVo vo) throws Exception;
	
	public List<Book> selectlistTag(BookVo vo) throws Exception;
	
	public List<Book> selectlistReview(BookVo vo) throws Exception;
	
	//좋아요 누른 책
	public Book selecOneFv(BookVo vo) throws Exception;
	
	public List<Book> selectListFv(BookVo vo) throws Exception;
	
	public List<Book> selectlistTagFv(BookVo vo) throws Exception;
}

