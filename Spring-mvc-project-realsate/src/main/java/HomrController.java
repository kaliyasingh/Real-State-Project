import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomrController {
	
	@RequestMapping("/")
	public String ingdexPage()
	{
		return "index";
	}
}
