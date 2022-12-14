package nov.infra.modules.member;

import java.util.List;

public interface MemberService {
	public List<Member> selectList(MemberVo vo) throws Exception;
	public Member selectOne(MemberVo vo) throws Exception;
	
	public int insert(Member dto) throws Exception;
	public int update(Member dto) throws Exception;
	public int uelete(Member dto) throws Exception;
	public int delete(MemberVo vo) throws Exception;
	
	public int selectOneCount(MemberVo vo) throws Exception;
	public int selectOneIdCheck(Member dto) throws Exception;

	// 회원가입
	public int memberJoin(Member dto) throws Exception;
	
	//로그인
	public Member selectOneLogin(Member dto) throws Exception;
	public Member selectOneId(Member dto) throws Exception;
	
	

}
