package nov.infra.modules.book;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/book")
public class BookController {
	/*
	 * @Autowired BookServiceImpl service;
	 */
	
	@RequestMapping(value = "bestList")
	public String bestList () {
		return "infra/book/bestList";
	}
	
	@RequestMapping(value = "like1")
	public String like1 () {
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
