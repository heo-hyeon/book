package nov.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import nov.infra.common.base.BaseController;

@Controller
@RequestMapping(value="/member/")
public class MemberController extends BaseController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "memberList")
	public String memberList (@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		System.out.println("vo.getShValue():" + vo.getShValue());
		System.out.println("vo.getShOption():" + vo.getShOption());
		System.out.println("vo.getShcertifiNY():" + vo.getShcertifiNY());
		
		setSearchAndPaging(vo);
		
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/member/xdmin/memberList";
	}
	
//	페이지 고정
	public void setSearchAndPaging(MemberVo vo) throws Exception {
		
		vo.setShuseNY(vo.getShuseNY() == null ? 1 : vo.getShuseNY());

		vo.setParamsPaging(service.selectOneCount(vo));
	}	
	
	@RequestMapping(value="memberForm")
	public String MemberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		Member result = service.selectOne(vo);
		model.addAttribute("item", result);
		return "infra/member/xdmin/memberForm";
	}

	@RequestMapping(value="MemberInst")
	public String MemberInst(Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.insert(dto);
		vo.setSeq (dto.getSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberList";
	}
	
	// 회원가입
	@RequestMapping(value="MemberJoin")
	public String MemberJoin(Member dto) throws Exception {
		service.insert(dto);
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value="MemberUpdt")
	public String Member(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/memberForm";
	}
	
	@RequestMapping(value="MemberUele")
	public String Member(Member dto) throws Exception {
		int result = service.uelete(dto);
		return "redirect:/3member/memberList";
	}
	
	@RequestMapping(value="MemberDele")
	public String Member(MemberVo vo) throws Exception {
		service.delete(vo);
		return "redirect:/member/memberList";
	}
	
	@ResponseBody
	@RequestMapping(value = "checkId")
	public Map<String, Object> checkId(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.selectOneIdCheck(dto);
		System.out.println(result);
		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}

}
