package common.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public abstract class AbstractController implements InterCommand{
// abstract 를 써주는 이유가 무엇인가?
// => 인터페이스에 있는 것을 나는 안 하겠다.	
	
	// === 다음의 나오는 것은 우리끼리한 약속이다. === 
	
	// ※ VIEW 단 페이지(.JSP)로 이동시 forward 방법(dispatcher)으로 해야 하는데 
	//   자식 클래스에서는 부모 클래스에서 생성해둔 메소드 호출시 아래와 같이 하면 된다.
	//	 super.setRedirect(false); 
	//   super.setViewPage("/WEB-INF/index.jsp");
	
	
	// ※ URL 주소를 변경하여 페이지 이동시
	//   sendRedirect 방법으로 해야하는데 
	//	 super.setRedirect(true); 
	// 	 super.setViewPage("registerMember.up");	 
	
	
	// 필드 (field)
	private boolean isRedirect = false ;
	// isRedirect 변수의 값이 false 이라면, view 단 페이지(.jsp)로 forward(dispatcher) 하겠다는 말이다.
	// isRedirect 변수의 값이 true 이라면, sendRedirect 로 하겠다는 말이다.
	
	private String viewPage;
	// viewPage 는 isRedirect 값이 false 이라면, view단 페이지(.jsp) 의 경로명이 되고,
	// viewPage 는 isRedirect 값이 true 이라면 이동해야할 URL 주소가 된다.

	public boolean isRedirect() {
		return isRedirect;
	}

	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}

	public String getViewPage() {
		return viewPage;
	}

	public void setViewPage(String viewPage) {
		this.viewPage = viewPage;
	}
	
	
	
	
}
