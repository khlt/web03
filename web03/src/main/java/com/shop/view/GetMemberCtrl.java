package com.shop.view;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.MemberVO;
import com.shop.model.MemberDAO;

@WebServlet("/GetMemberCtrl")
public class GetMemberCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetMemberCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String userid = request.getParameter("userid");
		MemberDAO dao = new MemberDAO();
		MemberVO member = dao.getMember(userid);
		if(member != null) {
			request.setAttribute("member", member);
			RequestDispatcher view = request.getRequestDispatcher("./member/getMember.jsp");
			view.forward(request, response);
		} else {
			response.sendRedirect("GetMemberListCtrl");
		}
	}
}