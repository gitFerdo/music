package userRegister.Deo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import userRegister.Model.A_musicUploader;

public class A_musicEditprofile_DButil {
	public static List<A_musicUploader> Validate(String User_N,String Pass_w){
		  ArrayList<A_musicUploader> user = new ArrayList<>();
		  String url = "jdbc:mysql://localhost:3306/onlmusicmngsystem";
		  String DB_Name = "root";
		  String DB_Password = "1234";
		  
		  try {
			  Class.forName("com.mysql.jdbc.Driver");
			  Connection Conn = DriverManager.getConnection(url,DB_Name,DB_Password);
			  Statement Stat = Conn.createStatement();
			  
			  String sql = "SELECT * FROM onlmusicmngsystem.eventuploader WHERE username = '"+User_N+"' AND password = '"+Pass_w+"'";
			  ResultSet res = Stat.executeQuery(sql);
			  
			  if(res.next()) {
				  int u_id = res.getInt(1);
				  String u_firstNamr = res.getString(2);
				  String u_lastName = res.getString(3);
				  String u_username = res.getString(4);
				  String u_password = res.getString(5);
				  String u_Eaddress = res.getString(6);
				  String u_contact = res.getString(7);
				  
				  A_musicUploader U1 = new A_musicUploader(u_id, u_firstNamr, u_lastName, u_username, u_password, u_Eaddress, u_contact);
				  user.add(U1);
			  }
		  }
		  catch(Exception e) {
			  e.printStackTrace();
		  }
		  return user;
	 }
}
