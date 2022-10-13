package nov.infra.modules.book;

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
		System.out.println("dao result : " + result);
		return result;
	}
	
}
