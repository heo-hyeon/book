package nov.infra.modules.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/user/")
public class UserController {

	@RequestMapping(value = "mod")
	public String mod() {
		return "infra/user/mod";
	}

	@RequestMapping(value = "mypage")
	public String mypage() {
		return "infra/user/mypage";
	}
	
	@RequestMapping(value = "mypage2")
	public String mypage2() {
		return "infra/user/mypage2";
	}
	
	@RequestMapping(value = "reg")
	public String reg() {
		return "infra/user/reg";
	}
}

