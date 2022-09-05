package nov.infra.modules.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository          //Dao파일이라는 걸 알려주는 것
public class CodeGroupDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "nov.infra.modules.codegroup.CodeGroupMapper";
	
//	public List(CodeGroup> selectList(CodeGroupVo vo){return sqlSession.selectList(namespace + ".selectList", vo; }
	
	public List<CodeGroup> selectList(CodeGroupVo vo){
//  List<CodeGroup> list = sqlSession.selectList(namespace + ".selectList", vo);
		return sqlSession.selectList(namespace + ".selectList", vo); }
}