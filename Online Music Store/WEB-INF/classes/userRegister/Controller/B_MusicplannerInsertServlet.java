package userRegister.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userRegister.Deo.B_MusicplannerDButil;

@WebServlet("/MovieInsert")
public class B_MusicplannerInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		java.lang.String prod_name = request.getParameter("prod_name");
		java.lang.String prod_cnt = request.getParameter("prod_cnt");
		java.lang.String prod_email = request.getParameter("prod_email");
		java.lang.String prod_jroll = request.getParameter("prod_jroll");
		
		boolean isTrue;
		
		isTrue = B_MusicplannerDButil.Insertmovies(prod_name,prod_cnt,prod_email,prod_jroll);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("B_EventplannerInsert_1.jsp");
			dis.forward(request,response);
			
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request,response);
		}
	}

}
