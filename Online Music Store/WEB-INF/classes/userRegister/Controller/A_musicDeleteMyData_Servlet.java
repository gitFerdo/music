package userRegister.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userRegister.Deo.A_musicDeleteMyData_DButil;
import userRegister.Deo.A_musicRetrieveMyData_DButil;
import userRegister.Model.A_musicUploader;

@WebServlet("/DeleteMyData_Servlet")
public class A_musicDeleteMyData_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static boolean F_Result;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("U_id");
		
		F_Result = A_musicDeleteMyData_DButil.Delete_Profile(id);
		
		if(F_Result == true) {
			RequestDispatcher dispatch1 = request.getRequestDispatcher("index.jsp");
			dispatch1.forward(request,response);
		}else {
			List<A_musicUploader> MyNew_Details = A_musicRetrieveMyData_DButil.getUploader_Details(id);
			request.setAttribute("user_Details", MyNew_Details);
			
			RequestDispatcher dispatch2 = request.getRequestDispatcher("A_eventDeleteMyData_2.jsp");
			dispatch2.forward(request,response);
		}
		
	}

}
