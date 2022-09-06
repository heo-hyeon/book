package nov.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;

	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model, CodeGroupVo vo) throws Exception {

		System.out.println("vo.getShseq(): " + vo.getShseq());
		System.out.println("vo.getShname(): " + vo.getShname());

		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
		vo.setshOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setshDateStart(vo.getShDateStart() == null ? 
				UtilDateTime,calculateDayString(UrilDateTime.nowLocalDateTime(),Constants.DATE_INTERVAL):vo.getShDateStart());
		vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : vo.getShDateEnd());
	
		
		@RequestMapping(value = "codeGroupForm")
		public String codeGroupForm(Model model, CodeGroupVo vo) throws Exception {
		return "infra/codegroup/xdmin/codeGroupForm";
	}

	@RequestMapping(value="codeGroupInst") 
	public String codeGroupInst(CodeGroup dto) throws Exception { 
		 
		 int result = service.insert(dto);
		 System.out.println("controller result: " + result); 
		 System.out.println(dto.getName());
		 
		 return "redirect:/codeGroup/codeGroupList"; }
	
	 
}
