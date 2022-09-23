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
	
	public int insert(Member dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result : " + result);
		return result;
	}
	
	public Member selectOne(MemberVo vo) {
		Member result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result : " + result);
		return result;
	}
	
	public int selectOneIdCheck(Member dto) {
		int result = sqlSession.selectOne(namespace + ".selectOneIdCheck", dto);
		return result;
	}
}
