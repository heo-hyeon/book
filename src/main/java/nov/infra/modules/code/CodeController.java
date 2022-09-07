package nov.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import nov.infra.modules.codegroup.Constants;
import nov.infra.modules.codegroup.UtilDateTime;

@Controller
@RequestMapping(value="/code/")
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	
	
	@RequestMapping(value = "codeList")
	public String code(Model model, CodeVo vo) throws Exception {
		
		System.out.println("vo.getShseq(): " + vo.getShseq());
		System.out.println("vo.getShname(): " + vo.getShname());

		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : vo.getShDateStart());
		vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : vo.getShDateEnd());
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/code/xdmin/codeList";
	}
	
	@RequestMapping(value="codeForm")
	public String codeForm(Model model, CodeVo vo) throws Exception {
		return "infra/code/xdmin/codeForm";
	}
	
	@RequestMapping(value="codeInst")
	public String codeInst(Code dto) throws Exception {
		int result = service.insert(dto);
		System.out.println("controller result : " + result);
		System.out.println(dto.getName());
		
		return "redirect:/code/codeList";
	}
}




