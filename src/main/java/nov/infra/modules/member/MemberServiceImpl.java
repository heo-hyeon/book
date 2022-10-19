package nov.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import nov.infra.common.util.UtilSecurity;
import nov.infra.common.util.UtilUpload;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;

	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		List<Member> list = dao.selectList(vo);
		return list;
	}

	@Override
	public int insert(Member dto) throws Exception {
		//이미지 업로드
		int j = 0;
		System.out.println();
		for (MultipartFile multipartFile : dto.getUploadedImage()) {

			if (!multipartFile.isEmpty()) {

				String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
				UtilUpload.upload(multipartFile, pathModule, dto);

//				dto.setType(2);
//				dto.setDefaultNy(1);
				dto.setSort(j + 1);
				dto.setPseq(dto.getSeq());

				dao.itemImgUpload(dto);
			}
			j++;
		}

		// 암호화
//		System.out.println("pwd : " + dto.getPwd());
//		dto.setPwd(UtilSecurity.encryptSha256(dto.getPwd()));
//		dto.setMemberName(dto.getMemberName());
//
//		int result = dao.insert(dto);
//		System.out.println("service result : " + result);

		int result = 0;
		return result;
	}

	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		Member result = dao.selectOne(vo);
		System.out.println("service result : " + result);
		return result;
	}

	@Override
	public int selectOneIdCheck(Member dto) throws Exception {
		int result = dao.selectOneIdCheck(dto);
		return result;
	}

	@Override
	public int update(Member dto) throws Exception {
		dto.setPwd(UtilSecurity.encryptSha256(dto.getPwd()));
		return dao.update(dto);
	}

	@Override
	public int uelete(Member dto) throws Exception {
		return dao.uelete(dto);
	}

	@Override
	public int delete(MemberVo vo) throws Exception {
		return dao.delete(vo);
	}

	// 페이징
	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	// 회원가입
	@Override
	public int memberJoin(Member dto) throws Exception {
		return dao.update(dto);
	}

	// 로그인
	@Override
	public Member selectOneId(Member dto) throws Exception {
		System.out.println("pwd : " + dto.getPwd());
		dto.setPwd(UtilSecurity.encryptSha256(dto.getPwd()));
		dto.setMemberName(dto.getMemberName());
		return dao.selectOneId(dto);
	}

	@Override
	public Member selectOneLogin(Member dto) throws Exception {
		dto.setPwd(UtilSecurity.encryptSha256(dto.getPwd()));
		return dao.selectOneLogin(dto);
	}
}