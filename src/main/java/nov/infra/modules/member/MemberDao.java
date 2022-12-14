package nov.infra.modules.member;


import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import nov.infra.modules.book.Book;
import nov.infra.modules.book.BookVo;


@Repository
public class MemberDao {

	@Inject
	@Resource (name="sqlSession")
	
	private SqlSession sqlSession;
	
	private static String namespace = "nov.infra.modules.member.MemberMapper";
	
	public List<Member> selectList(MemberVo vo) { 
		List<Member> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list;
	}

	// 북관련 test
	public List<Book> selectList(BookVo vo) { 
		List<Book> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list;
	}
	public Member selectOne(MemberVo vo) {
		Member result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result : " + result);
		return result;
	}
	
	public int insert(Member dto) {return sqlSession.insert(namespace + ".insert", dto);}
	public int update(Member dto) {return sqlSession.insert(namespace + ".update", dto);}
	public int uelete(Member dto) {return sqlSession.update(namespace + ".uelete", dto);}
	public int delete(MemberVo vo) {return sqlSession.delete(namespace + ".delete", vo);}
	
	
	// 페이징
	public int selectOneCount(MemberVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount",vo);}
	
	//로그인
	public int selectOneIdCheck(Member dto) {
		int result = sqlSession.selectOne(namespace + ".selectOneIdCheck", dto);
		return result;
	}
	
	public Member selectOneLogin(Member dto) {return sqlSession.selectOne(namespace + ".selectOneLogin",dto);}
	
	public Member selectOneId(Member dto) {return sqlSession.selectOne(namespace + ".selectOneId",dto);}

	// 이미지 업로드
	public int itemImgUpload(Member dto) {return sqlSession.insert(namespace + ".itemImgUploaded", dto);}
		
	}
