package nov.infra.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {

	@Inject
	@Resource (name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "nov.infra.modules.code.CodeMapper";
	
	public List<Code> selectList(CodeVo vo) { 
		List<Code> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list;
	}
	
	public Code selectOne(CodeVo vo) {
		Code result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result : " + result);
		return result;
	}
	
	public int insert(Code dto) {return sqlSession.insert(namespace+".insert",dto);}
	public int update(Code dto) {return sqlSession.insert(namespace+".update",dto);}
	public int uelete(Code dto) {return sqlSession.update(namespace+".uelete",dto);}
	public int delete(CodeVo vo) {return sqlSession.delete(namespace+".delete",vo);}
	
//  페이징
	public int selectOneCount(CodeVo vo) {return sqlSession.selectOne(namespace+".selectOneCount",vo);}
	
//	for cache
	public List<Code> selectListCachedCodeArrayList(){ return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null); }
}


