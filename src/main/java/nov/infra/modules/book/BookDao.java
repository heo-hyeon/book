package nov.infra.modules.book;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



@Repository
public class BookDao {

	@Inject
	@Resource ( name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "nov.infra.modules.book.BookMapper";
	
	public Book selectOne(BookVo vo) {
		Book result = sqlSession.selectOne(namespace + ".selectOne", vo);
		return result;
	}
	
	public List<Book> selectList(BookVo vo) { 
		List<Book> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list;
	}
	
	public List<Book> selectlistTag(BookVo vo) { 
		List<Book> list = sqlSession.selectList(namespace + ".selectlistTag", vo);
		return list;
	}
	
	public List<Book> selectlistReview(BookVo vo) {
		List<Book> list = sqlSession.selectList(namespace + ".selectlistReview", vo);
		return list;
	}
	
	public Book selecOneFv(BookVo vo) {
		Book result = sqlSession.selectOne(namespace + ".selecOneFv", vo);
		return result;
	}
	
//	public List<Book> selectListFv(BookVo vo) {
//		List<Book> list = sqlSession.selectList(namespace + ".selectListFv", vo);
//		return list;
//	}
//	
//	public List<Book> selectlistTagFv(BookVo vo) {
//		List<Book> list = sqlSession.selectList(namespace + ".selectlistTagFv", vo);
//		return list;
//	}
}
