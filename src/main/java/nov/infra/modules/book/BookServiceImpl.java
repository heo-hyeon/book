package nov.infra.modules.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookServiceImpl implements BookService{

	
	@Autowired
	BookDao dao;
	
	@Override
	public Book selectOne(BookVo vo) throws Exception {
		Book result = dao.selectOne(vo);
		System.out.println("service result : " + result);
		return result;
	}
}
