package nov.infra.modules.user;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
	@Inject
	@Resource (name="sqlSession")
	
	private SqlSession sqlSession;
	
	private static String namespace = "nov.infra.modules.user.UserMapper";
	
	public User selectOne(UserVo vo) {
		User result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result : " + result);
		return result;
	}
	
	public int insert(User dto) {return sqlSession.insert(namespace + ".insert", dto);}
	public int update(User dto) {return sqlSession.insert(namespace + ".update", dto);}

	public List<User> selectList(UserVo vo) {
		List<User> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list;
	}

}

