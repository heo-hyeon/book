package nov.infra.modules.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value="/user/")
public class UserController {
	@Autowired
	UserServiceImpl service;
	
	@RequestMapping(value = "userInst")
	public String userInst(UserVo vo, User dto, RedirectAttributes redirectAttribute) throws Exception {
		service.insert(dto);
		vo.setSeq(dto.getSeq());

		redirectAttribute.addFlashAttribute("vo", vo);

		return "redirect:/user/userMod";
	}
	
	@RequestMapping(value = "userUpdt")
	public String userUpdt(@ModelAttribute("vo") UserVo vo, User dto, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {
		
		String seq = (String) httpSession.getAttribute("sessSeq");
		
		dto.setSeq(seq);
		
		service.update(dto);
		vo.setSeq(dto.getSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/user/userList";
	}

	  //멤버 수정
	  @RequestMapping(value="userMod") 
	  public String userMod (Model model,UserVo vo, User dto,  HttpSession httpSession, RedirectAttributes redirectAttributes) throws Exception {
	
		  String seq = (String) httpSession.getAttribute("sessSeq"); 
		  
		  vo.setSeq(seq);
		  
		  User item = service.selectOne(vo);
		  model.addAttribute("item", item); 

		  System.out.println(item.getMemberName());
		  
			/* service.update(dto); */
		  redirectAttributes.addFlashAttribute("vo", vo); 
		  return "infra/user/userMod"; 
	  }
	 
}

