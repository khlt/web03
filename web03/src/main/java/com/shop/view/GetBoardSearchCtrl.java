package com.shop.view;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.common.BoardVO;
import com.shop.model.BoardDAO;

@WebServlet("/GetBoardSearchCtrl")
public class GetBoardSearchCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetBoardSearchCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String condition = request.getParameter("searchCondition");
		String keyword = request.getParameter("searchKeyword");
		BoardDAO dao = new BoardDAO();
		ArrayList<BoardVO> list = dao.getConditionSearch(condition, keyword);
		request.setAttribute("list", list);
		RequestDispatcher view = request.getRequestDispatcher("./board/getBoardList.jsp");
		view.forward(request, response);
	}
}