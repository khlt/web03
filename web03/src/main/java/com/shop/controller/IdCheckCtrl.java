package com.shop.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.model.MemberDAO;

@WebServlet("/IdCheckCtrl")
public class IdCheckCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	ServletContext application = null;
	
    public IdCheckCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String uid = request.getParameter("uid");
		MemberDAO dao = new MemberDAO();
		int cnt = dao.idCheck(uid);
		application = getServletContext();
		if(cnt>0) {
			application.setAttribute("msg", "no");
			response.sendRedirect("join.jsp");
		} else { 
			application.setAttribute("msg", "yes");
			response.sendRedirect("join.jsp?uid="+uid);
		}
	}
}
