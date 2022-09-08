package nov.infra.modules.code;

import java.util.List;

import nov.infra.modules.codegroup.CodeGroup;
import nov.infra.modules.codegroup.CodeGroupVo;

public interface CodeService {
	public List<Code> selectList(CodeVo vo) throws Exception;
	public int insert(Code dto) throws Exception;
	public Code selectOne(CodeVo vo) throws Exception;
}
