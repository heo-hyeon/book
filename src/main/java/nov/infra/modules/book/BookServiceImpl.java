package nov.infra.modules.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class BookServiceImpl implements BookService{

	
	@Autowired
	BookDao dao;
	
	@Override
	public Book selectOne(BookVo vo) throws Exception {
		Book result = dao.selectOne(vo);
		return result;
	}
	
	@Override
	public List<Book> selectList(BookVo vo) throws Exception {
		List<Book> result = dao.selectList(vo);
		return result;
	}
	
	@Override
	public List <Book> selectlistTag(BookVo vo) throws Exception {
		List<Book> result = dao.selectlistTag(vo);
		return result;
	}
	
	@Override
	public List<Book> selectlistReview(BookVo vo) throws Exception {
		List<Book> result = dao.selectlistReview(vo);
		return result;
	}
	
	@Override
	public Book selecOneFv(BookVo vo) throws Exception {
		Book result = dao.selecOneFv(vo);
		return result;
	}

	@Override
	public List<Book> selectListFv(BookVo vo) throws Exception {
		List<Book> result = dao.selectListFv(vo);
		return result;
	}
	
	@Override
	public List<Book> selectlistTagFv(BookVo vo) throws Exception {
		List<Book> result = dao.selectlistTagFv(vo);
		return result;
	}
}
