package nov.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


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
	
	
	public int selectOneIdCheck(Member dto) {
		int result = sqlSession.selectOne(namespace + ".selectOneIdCheck", dto);
		return result;
	}
}
