package nov.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import nov.infra.common.base.BaseController;

@Controller
@RequestMapping(value="/code/")
public class CodeController extends BaseController {

	@Autowired
	CodeServiceImpl service;
	
	
//	@RequestMapping(value = "codeList")
//	public String code(Model model, CodeVo vo) throws Exception {
//		
//		System.out.println("vo.getshValue(): " + vo.getShValue());
//		System.out.println("vo.getshOption(): " + vo.getShOption());
//
//		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
//		vo.setShDateStart(vo.getShDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : vo.getShDateStart());
//		vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : vo.getShDateEnd());
//		
//		List<Code> list = service.selectList(vo);
//		model.addAttribute("list", list);
//		return "infra/code/xdmin/codeList";
//	}

	@RequestMapping(value = "codeList")
	public String codeList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {

		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShdelNY(): " + vo.getShdelNY());
		
		setSearchAndPaging(vo);
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeList";
	}

	// 페이지 고정
	private void setSearchAndPaging(CodeVo vo) throws Exception {
		
		vo.setShuseNY(vo.getShuseNY() == null ? 1 : vo.getShuseNY());

		vo.setParamsPaging(service.selectOneCount(vo));
	}

	
	@RequestMapping(value="codeInst")
	public String codeInst(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		service.insert(dto);
		vo.setSeq(dto.getSeq());
		
		redirectAttributes.addFlashAttribute("vo",vo);
		return "redirect:/code/codeForm";
	}

	
	@RequestMapping(value="codeForm")
	public String codeForm(@ModelAttribute("vo") Model model, CodeVo vo) throws Exception {
		
		Code result = service.selectOne(vo);
		model.addAttribute("item", result);
		return "infra/code/xdmin/codeForm";
	}
	
	
	@RequestMapping(value="codeUpdt")
	public String codeUpdt(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo",vo);
		return "redirect:/code/codeForm";
	}
	
	@RequestMapping(value="codeUele")
	public String codeUele(Code dto) throws Exception {
		int result = service.uelete(dto);
		System.out.println("uelete result: " + result);
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value="codeDele")
	public String codeDele(CodeVo vo) throws Exception {
		service.delete(vo);
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value="codeView")
	public String codeView(CodeVo vo, Model model) throws Exception {
		Code result = service.selectOne(vo);
		model.addAttribute("item", result);
		return "infra/code/xdmin/codeForm";
	}
}