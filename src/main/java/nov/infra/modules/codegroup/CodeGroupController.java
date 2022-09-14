package nov.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;

//	@RequestMapping(value = "codeGroupList")
//	public String codeGroupList(Model model, CodeGroupVo vo) throws Exception {
//		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
//		vo.setShDateStart(vo.getShDateStart() == null
//				? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL)
//				: vo.getShDateStart());
//		vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : vo.getShDateEnd());
//
//		List<CodeGroup> list = service.selectList(vo);
//		model.addAttribute("list", list);
//		return "infra/codegroup/xdmin/codeGroupList";
//
//	}

	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		//페이징 시작
		int count = service.selectOneCount(vo);
		vo.setParamsPaging(count);
		if (count != 0) { List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
	} else {
		
	} //페이징 끝
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroup dto) throws Exception {

		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		System.out.println(dto.getName());

		return "redirect:/codeGroup/codeGroupList";
	}

	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		
		System.out.println("vo.getSeq(): " + vo.getSeq());
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroupUpdt")
	public String codeGroupUpdt(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupUele")
	public String codeGroupUele(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.uelete(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupDele")
	public String codeGroupDele(CodeGroupVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		service.delete(vo);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/codeGroup/codeGroupList";
	}
}
	
//	only for member
//	@RequestMapping(value = "codeGroupView")
//	public String codeGroupView(CodeGroupVo vo, Model model) throws Exception {
//		
//		CodeGroup result = service.selectOne(vo);
//		model.addAttribute("item", result);
//		return "infra/codegroup/xdmin/codeGroupForm";
//	}

