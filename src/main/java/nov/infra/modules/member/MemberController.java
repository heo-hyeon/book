package nov.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/member/")
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "memberList")
	public String memberList (Model model,MemberVo vo) throws Exception {
		
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/member/xdmin/memberList";
	}
	
	@RequestMapping(value="MemberForm")
	public String MemberForm(Model model, MemberVo vo) throws Exception {
		return "infra/member/xdmin/MemberForm";
	}

	@RequestMapping(value="MemberInst")
	public String MemberInst(Member dto) throws Exception {
		int result = service.insert(dto);
		System.out.println("controller result : " + result);
		System.out.println(dto.getName());
		
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value="memberView")
	public String memberView(MemberVo vo, Model model) throws Exception {
		Member result = service.selectOne(vo);
		model.addAttribute("item", result);
		return "infra/member/xdmin/memberForm";
	}
}
