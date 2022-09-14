package nov.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

	@Service
	public class CodeGroupServiceImpl implements CodeGroupService {

	@Autowired
	CodeGroupDao dao;
	
//	 @Override
//		public List<CodeGroup> selectLit (CodeGroupVo vo) throws Exception {
//		return dao.selectList(vo); }
	
	@Override
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception {
		 List<CodeGroup> list = dao.selectList(vo);
		 return list;
	}
	
	@Override
	public int insert(CodeGroup dto) throws Exception {
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public CodeGroup selectOne(CodeGroupVo vo) throws Exception {
		CodeGroup result = dao.selectOne(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	/* 업데이트 */
	@Override
	public int update(CodeGroup dto) throws Exception {
		return dao.update(dto);
	}

	/* uelete */
	@Override
	public int uelete(CodeGroup dto) throws Exception {
		return dao.uelete(dto);
	}

	/* 삭제 */
	@Override
	public int delete(CodeGroupVo vo) throws Exception {
		return dao.delete(vo);
	}

	/* 페이징 */
	@Override
	public int selectOneCount(CodeGroupVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	/*
	@Override
	public List<CodeGroup> selectListWithoutPaging() throws Exception {
		// TODO Auto-generated method stub
		return null;*/
	}