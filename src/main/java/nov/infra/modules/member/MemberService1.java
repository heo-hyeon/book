package nov.infra.modules.member;

import java.util.List;

import nov.infra.modules.book.Book;
import nov.infra.modules.book.BookVo;

public interface MemberService1 {

	public Book selectOne(BookVo vo) throws Exception;
	public List<Book> selectlistTag(BookVo vo) throws Exception;
}
