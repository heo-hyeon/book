package nov.infra.modules.book;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/book/")
public class BookController {

	 @Autowired 
	 BookServiceImpl service;
	

	@RequestMapping(value = "bestList")
	public String bestlist (@ModelAttribute("vo") BookVo vo ,Model model) throws Exception {
	
		Book item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		List<Book> list = service.selectlistTag(vo);
		model.addAttribute("list", list);
		
		List<Book> list1 = service.selectlistReview(vo);
		model.addAttribute("list1", list1);
		
		return "infra/book/bestList";
	}
	
	@RequestMapping(value = "like1")
	public String like1 (@ModelAttribute("vo") BookVo vo, Model model) throws Exception {
		
		Book item = service.selecOneFv(vo);
		model.addAttribute("item", item);
		
		List<Book> list = service.selectlistTagFv(vo);
		model.addAttribute("list", list);
		
		return "infra/book/like1";
	}
	 
	@RequestMapping(value = "likebook" )
	public String likebook () {
		return "infra/book/likebook";
	}
	
	@RequestMapping(value = "recommend1")
	public String recommend1 () {
		return "infra/book/recommend1";
	}
	
	@RequestMapping(value = "recommendList")
	public String recommendList () {
		return "infra/book/recommendList";
	}
	
}
