package sonjusun;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.AbstractController;

public class Test extends AbstractController {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		super.setViewPage("/WEB-INF/jusun01.jsp");
		
		
	}

}
