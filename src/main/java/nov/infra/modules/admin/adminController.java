package nov.infra.modules.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/")
public class adminController {

	
@RequestMapping(value="/adminChoice")
public String adminChoice() {
	 return "infra/admin/adminChoice";
	}
}
