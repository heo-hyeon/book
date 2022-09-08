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

		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : vo.getShDateStart());
		vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : vo.getShDateEnd());
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/codegroup/xdmin/codeGroupList"; 
		
	}
		@RequestMapping(value = "codeGroupForm")
		public String codeGroupForm(Model model, CodeGroupVo vo) throws Exception {
		return "infra/codegroup/xdmin/codeGroupForm";
	}

	@RequestMapping(value="codeGroupInst") 
	public String codeGroupInst(CodeGroup dto) throws Exception { 
		 
		 int result = service.insert(dto);
		 System.out.println("controller result: " + result); 
		 System.out.println(dto.getName());
		 
		 return "redirect:/codeGroup/codeGroupList"; 
	}
	
	@RequestMapping(value="codeGroupView") 
	public String codeGroupView(CodeGroupVo vo,Model model) throws Exception { 
		 
		 CodeGroup result = service.selectOne(vo);
		 model.addAttribute("item", result);
		 return "infra/codegroup/xdmin/codeGroupForm"; 
	}
}
