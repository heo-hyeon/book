package nov.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import nov.infra.common.base.BaseController;
import nov.infra.modules.book.BookVo;

@Controller

@RequestMapping(value = "/member/")
public class MemberController extends BaseController {

	@Autowired
	MemberServiceImpl service;
	
//	@Autowired 
//	BookServiceImpl serviceBook;
//	

	@RequestMapping(value = "home")
	public String home(MemberVo vo, BookVo voBook, HttpSession httpSession, Model model) throws Exception {

//		List<Book> list = serviceBook.selectList(voBook);
//		model.addAttribute("listBook", list);
		
		return "infra/member/xdmin/home";
	}

	@RequestMapping(value = "memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		/* vo.setShuseNY(vo.getShuseNY() == null ? 1 : vo.getShuseNY()); */
		setSearchAndPaging(vo);

		List<Member> list = service.selectList(vo);
		// vo.setShcareer("1");
		model.addAttribute("list", list);
		return "infra/member/xdmin/memberList";
	}

//	페이지 고정
	public void setSearchAndPaging(MemberVo vo) throws Exception {

		vo.setParamsPaging(service.selectOneCount(vo));
	}

	@RequestMapping(value = "memberInst")
	public String memberInst(Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		System.out.println("vo : " + vo);
		service.insert(dto);
//		vo.setSeq(dto.getSeq());
//		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:memberForm";
	}
	

	@RequestMapping(value = "memberForm")
	public String memberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		Member result = service.selectOne(vo);
		model.addAttribute("item", result);
		return "infra/member/xdmin/memberForm";
	}

	// 회원가입
	@RequestMapping(value = "MemberJoin")
	public String MemberJoin(Member dto) throws Exception {

		service.insert(dto);
		return "redirect:/member/memberForm";
	}

//	@RequestMapping(value = "memberUpdt")
//	public String memberUpdt(MemberVo vo, Member dto,Model model, RedirectAttributes redirectAttributes) throws Exception {
//		
//		
//		dto.setSeq(seq);
//		model.addAttribute("item", result);
//		service.update(dto);
//		vo.setSeq(dto.getSeq());
//		redirectAttributes.addFlashAttribute("vo", vo);
//		return "redirect:/member/memberList";
//	}

	@RequestMapping(value = "memberUpdt")
	public String memberUpdt(MemberVo vo, Member dto, Model model, RedirectAttributes redirectAttributes) throws Exception {

		int result = service.update(dto);
		System.out.println("Controller update Result : " + result);
		redirectAttributes.addFlashAttribute("vo", vo);
		model.addAttribute("item", model);

		return "redirect:/member/memberList";
	}

	@RequestMapping(value = "memberUele")
	public String memberUele(Member dto, RedirectAttributes redirectAttributes) throws Exception {
		//!!!!!!!!!!원래 쓰던 줄 int result = service.uelete(dto);
		service.uelete(dto);
		return "redirect:/member/memberList";
	}

	@RequestMapping(value = "memberDele")
	public String memberDele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.delete(vo);
		return "redirect:/member/memberList";
	}

	/*
	 * @RequestMapping(value = "memberMod") public String memberMod(MemberVo vo,
	 * HttpSession httpSession, Model model) throws Exception {
	 * 
	 * String seq = (String) httpSession.getAttribute("sessSeq"); Member item =
	 * service.selectOne(vo);
	 * 
	 * model.addAttribute("item", item); return "infra/member/xdmin/memberMod"; }
	 */

	// 멤버 수정 경로 설정
	@RequestMapping(value = "memberMod")
	public String memberMod(Model model, MemberVo vo, Member dto, HttpServletRequest httpServletRequest, RedirectAttributes redirectAttributes)
			throws Exception {

		HttpSession httpSession =  httpServletRequest.getSession();
		String sessSeq = (String) httpSession.getAttribute("sessSeq");
		
		vo.setSeq(sessSeq);
		
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);

		
		/* service.update(dto); */
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "infra/member/xdmin/memberMod";
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

	// 로그인
	@ResponseBody
	@RequestMapping(value = "loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		/*
		 * Member rtMember = service.selectOneId(dto); System.out.println("rtMember" +
		 * rtMember);
		 * 
		 * if (rtMember != null) {
		 */

		Member rtMember2 = service.selectOneLogin(dto);

		if (rtMember2 != null) {

			System.out.println("rtMember2 : " + rtMember2);
			httpSession.setAttribute("sessSeq", rtMember2.getSeq());
			httpSession.setAttribute("sessId", rtMember2.getMemberID());
			httpSession.setAttribute("sessName", rtMember2.getMemberName());
			returnMap.put("rt", "success");
		}
		/* } */ else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}

	// 로그아웃
	@ResponseBody
	@RequestMapping(value = "logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		/* UtilCookie.deleteCookie(); */
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	
	@RequestMapping(value = "login")
	public String login() {
		return "infra/member/xdmin/login";
	}
	
	/*
	 * @RequestMapping(value = "userMod") public String
	 * userMod(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	 * return "infra/member/user/UserMod"; }
	 */
	
	// public 자료형(data type) 함수 이름 ( 파라미터 ) 
}