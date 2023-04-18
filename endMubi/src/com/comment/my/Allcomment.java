package com.comment.my;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import commentDAO.commentDAO;
import commentVO.commentVO;

public class Allcomment implements commentImpl {

	@Override
	public void comment(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		commentDAO bdao = new commentDAO();
		
		String movieName = request.getParameter("title");
		System.out.println(movieName);
		ArrayList<commentVO> alist = bdao.movie1(movieName);
		
		request.setAttribute("alist", alist);
		
//		str = null;
		
//		if(movieName)
	}

}
