package nov.infra.modules.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nov.infra.common.util.UtilSecurity;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserDao dao;
	
	@Override
	public List<User> selecList(UserVo vo) throws Exception {
		List<User> list = dao.selectList(vo);
		return list;
	}

	@Override
	public int insert(User dto) throws Exception {
		
	//암호화
	System.out.println("pwd : " + dto.getPwd());
	dto.setPwd(UtilSecurity.encryptSha256(dto.getPwd()));
	dto.setMemberName(dto.getMemberName());

	int result = dao.insert(dto);
	System.out.println("service result : " + result);
	return result;
	}
	
	@Override
	public User selectOne(UserVo vo) throws Exception {
		User result = dao.selectOne(vo);
		return result;
	}

	@Override
	public int update(User dto) throws Exception {
		return dao.update(dto);
	}

}
