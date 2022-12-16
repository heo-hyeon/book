package nov.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import nov.infra.common.base.BaseController;

@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController extends BaseController{

	@Autowired
	CodeGroupServiceImpl service;
	private int result;

//	@RequestMapping(value = "codeGroupList")
//	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
//
//		setSearchAndPaging(vo);
//		/* vo.setParamsPaging(service.selectOneCount(vo)); */
//
//		if(vo.getTotalRows() > 0) {
//			List<CodeGroup> list = service.selectList(vo);
//			model.addAttribute("list", list);
//		}
//	
//		return "infra/codegroup/xdmin/codeGroupList";
// } 
	
	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {

	System.out.println("vo.getShValue(): " + vo.getShValue());
	System.out.println("vo.getShOption(): " + vo.getShOption());
	System.out.println("vo.getShdelNY(): " + vo.getShdelNY());
	
	setSearchAndPaging(vo);
	
//	if (vo.getTotalRows() > 0) {
	List<CodeGroup> list = service.selectList(vo);
	model.addAttribute("list", list);
	
	return "infra/codegroup/xdmin/codeGroupList";
} 

//	페이지 고정
	public void setSearchAndPaging(CodeGroupVo vo) throws Exception {
		
		vo.setShuseNY(vo.getShuseNY() == null ? 1 : vo.getShuseNY());
//		
//		datepicker
//		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
//		vo.setShDateStart(vo.getShDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : vo.getShDateStart());  	
//		vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : vo.getShDateEnd());
//
		vo.setParamsPaging(service.selectOneCount(vo));
	}

	//데이터 추가 
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroupVo vo, CodeGroup dto,RedirectAttributes redirectAttributes) throws Exception {

		service.insert(dto);
		vo.setSeq(dto.getSeq());
		
		redirectAttributes.addFlashAttribute("vo",vo);
		
		return "redirect:/codeGroup/codeGroupForm";
//		if (Constants.INSERT_AFTER_TYPE == 1) {
//			return "redirect:/codeGroup/codeGroupForm";
//		} else {
//			return "redirect:/codeGroup/codeGroupList";
//		}
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
		return "redirect:/codeGroup/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroupUele")
	public String codeGroupUele(CodeGroup dto) throws Exception {
		result = service.uelete(dto);
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupDele")
	public String codeGroupDele(CodeGroupVo vo) throws Exception {		
			service.delete(vo);
			return "redirect:/codeGroup/codeGroupList";
		}
	}