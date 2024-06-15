package userRegister.Deo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import userRegister.Model.B_Musicplanner;

public class B_MusicplannerDButil {
	private static Statement stmt =null;
	
	private static boolean isSuccess;
	
	public static List<B_Musicplanner> validate (String Prod_name){
		
		ArrayList<B_Musicplanner> Mov = new ArrayList<B_Musicplanner>();
		
		String url = "jdbc:mysql://localhost:3306/onlmusicmngsystem";
		String user = "root"; 
		String password = "1234"; 
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, password);
			stmt = con.createStatement();
			
			String sql = "select * from onlmusicmngsystem.eventplanner where prod_name='"+Prod_name+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			
			if (rs.next()) {
				int prod_id = rs.getInt(1);
				String prod_name = rs.getString(2);
				String prod_cnt = rs.getString(3);
				String prod_email = rs.getString(4);
				String prod_jroll = rs.getString(5);
				
				B_Musicplanner M = new B_Musicplanner(prod_id,prod_name,prod_cnt,prod_email,prod_jroll);
				Mov.add(M);
				
			}
			
			
		}
			
		catch(Exception e) {
			e.printStackTrace();
		}	
		
		
		
		return Mov;
		
		}



	//private static ResultSet executeQuery(String sql) {
		//TODO Auto-generated method stub
		//return null;
	//}



	public static boolean Insertmovies(String prod_name, String prod_cnt, String prod_email, String prod_jroll) {
	
	boolean isSuccess = false;
	
		String url = "jdbc:mysql://localhost:3306/onlmusicmngsystem";
		String user = "root";
		String password = "1234";
	
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con = DriverManager.getConnection(url,user,password);
		Statement stmt = con.createStatement();
		String sql = "insert into onlmusicmngsystem.eventplanner values (0,'"+prod_name+"','"+prod_cnt+"','"+prod_email+"','"+prod_jroll+"')";
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		} else {
			isSuccess = false;
		}
		
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	
	
	return isSuccess;
	}
	
	public static boolean UpdateMovies (String prod_id,String prod_name,String prod_cnt,String prod_email,String prod_jroll) {
		
		
		String url = "jdbc:mysql://localhost:3306/onlmusicmngsystem";
		String user = "root";
		String password = "1234";
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,password);
			Statement stmt = con.createStatement();
			String sql = "update onlmusicmngsystem.eventplanner set prod_name= '"+prod_name+"',prod_cnt='"+prod_cnt+"',prod_email='"+prod_email+"',prod_jroll='"+prod_jroll+"' "
					+ "where prod_id='"+prod_id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
		
	}
	
	
	public static boolean DeleteMovie (String prod_id) {
		
		

		String url = "jdbc:mysql://localhost:3306/onlmusicmngsystem";
		String user = "root";
		String password = "1234";
		
		
		
		int convprod_id=Integer.parseInt(prod_id);
		try {
			
			Connection con = DriverManager.getConnection(url,user,password);
			Statement stmt = con.createStatement();
			String sql="delete from onlmusicmngsystem.eventplanner where prod_id='"+convprod_id+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
				
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}




	//public static List<Movie> validate(String movie_name) {
		// TODO Auto-generated method stub
		//return null;
	//}
	
	
	public static List<B_Musicplanner> getMovieDetails(String prod_id){
		
		
		int convertedprod_id = Integer.parseInt(prod_id);
		
		String url = "jdbc:mysql://localhost:3306/onlmusicmngsystem";
		String user = "root";
		String password = "1234";
		
		
		
		ArrayList<B_Musicplanner> Mov = new ArrayList<>();
		
		try {
			
			Connection con = DriverManager.getConnection(url,user,password);
			Statement stmt = con.createStatement();
			String sql = "Select * from onlmusicmngsystem.eventplanner where prod_id = '"+convertedprod_id+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int convprod_id = rs.getInt(1);
				String prod_name = rs.getString(2);
				String prod_cnt = rs.getString(3);
				String prod_email = rs.getString(4);
				String prod_jroll = rs.getString(5);
				
				B_Musicplanner M = new B_Musicplanner(convprod_id,prod_name,prod_cnt,prod_email,prod_jroll);
				Mov.add(M);
				
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();		}
		
		
		
		
		
		return Mov;
		
	}
}
