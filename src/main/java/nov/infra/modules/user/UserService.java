package nov.infra.modules.user;

import java.util.List;

public interface UserService {

	public List<User> selecList(UserVo vo) throws Exception;
	public User selectOne(UserVo vo) throws Exception;
	
	public int insert(User dto) throws Exception;
	public int update(User dto) throws Exception;
	
}
