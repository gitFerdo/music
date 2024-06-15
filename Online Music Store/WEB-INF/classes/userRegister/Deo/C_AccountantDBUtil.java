package userRegister.Deo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import userRegister.Model.C_Accountant;

public class C_AccountantDBUtil {
	private static ResultSet rs = null;
	private static boolean isSuccess = false;
	
	public static boolean tvseriesinsert(String e_Name, String e_Code, String t_Cost, String e_dis, String a_Dicession) {
		
		boolean isAdd = false;
		
		//db
		String url = "jdbc:mysql://localhost:3306/onlmusicmngsystem";
		String user = "root";
		String pass = "1234";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "insert into onlmusicmngsystem.bill values('"+e_Name+"','"+e_Code+"','"+t_Cost+"','"+e_dis+"','"+a_Dicession+"')";
			int ns = stmt.executeUpdate(sql);
			
			if(ns > 0) {
				isAdd = true;
			}else {
				isAdd = false;
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		
		return isAdd;
	}

	
	
	public static boolean updatetvseries(String e_Name, String e_Code, String t_Cost, String e_dis, String a_Dicession) {
		String url = "jdbc:mysql://localhost:3306/onlmusicmngsystem";
		String user = "root";
		String pass = "1234";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "SELECT * FROM onlmusicmngsystem.bill WHERE e_Name = '"+e_Name+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

	public static List<C_Accountant> inserttvseries(String e_Name) {
		ArrayList<C_Accountant> tv_Series = new ArrayList<>();
		
		//private static boolean isSuccess;
		//private static connection con =null;
		
		
		//createDBconnection
		
		String url = "jdbc:mysql://localhost:3306/onlmusicmngsystem";
		String user = "root";
		String pass = "1234";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "SELECT * FROM onlmusicmngsystem.bill WHERE e_Name = '"+e_Name+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String e_Name1 = rs.getString(1);
				String e_Code = rs.getString(2);
				String t_Cost = rs.getString(3);
				String e_dis = rs.getString(4);
				String a_Dicession = rs.getString(5);
				
				C_Accountant S1 = new C_Accountant(e_Name1, e_Code, t_Cost, e_dis, a_Dicession);
				tv_Series.add(S1);
				
			}		
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		return tv_Series;
		
	}
	
	public static boolean update(String e_Name, String e_Code, String t_Cost, String e_dis, String a_Dicession) {
	
	boolean isSuccess = false;
	
	//private static boolean isSuccess;
	//private static connection con =null;
	//createDBconnection
	
	String url = "jdbc:mysql://localhost:3306/onlmusicmngsystem";
	String user = "root";
	String pass = "1234";
	
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql1 = "update onlmusicmngsystem.bill set e_Code='"+e_Code+"',t_Cost='"+t_Cost+"',e_dis='"+e_dis+"',a_Dicession='"+a_Dicession+"'" 
					+ "where e_Name='"+e_Name+"'";		
			
			int rs = stmt.executeUpdate(sql1);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
	
		return isSuccess;
	}
	
	public static List<C_Accountant> retriew_Data(String e_Name) {
		ArrayList<C_Accountant> Updated_Data = new ArrayList<>();
		
		//private static boolean isSuccess;
		//private static connection con =null;
		
		
		//createDBconnection
		
		String url = "jdbc:mysql://localhost:3306/onlmusicmngsystem";
		String user = "root";
		String pass = "ASUS1234";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "SELECT * FROM onlmusicmngsystem.bill WHERE e_Name = '"+e_Name+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String e_Name1 = rs.getString(1);
				String e_Code = rs.getString(2);
				String t_Cost = rs.getString(3);
				String e_dis = rs.getString(4);
				String a_Dicession = rs.getString(5);
				
				C_Accountant List = new C_Accountant(e_Name1, e_Code, t_Cost, e_dis, a_Dicession);
				Updated_Data.add(List);
				
			}		
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		return Updated_Data;
		
	}
	
	public static boolean deletetvseries(String e_Name) {
		
		//int convTv = Integer.parseInt(name);
		
		String url = "jdbc:mysql://localhost:3306/onlmusicmngsystem";
		String user = "root";
		String pass = "1234";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql="delete from onlmusicmngsystem.bill where e_Name='"+e_Name+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			
		}catch(Exception e){
			
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}



}
