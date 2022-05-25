package com.shop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.model.MemberDAO;

@WebServlet("/DelMemberCtrl")
public class DelMemberCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DelMemberCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String uid = request.getParameter("uid");
		HttpSession session = request.getSession();
		MemberDAO dao = new MemberDAO();
		int cnt = dao.delMember(uid);
		if(cnt>0) {  //회원탈퇴 성공
			session.invalidate();
			response.sendRedirect("index.jsp");
		} else {  //회원탈퇴 실패
			//response.sendRedirect("./member/login.jsp");
		}	
	}
}