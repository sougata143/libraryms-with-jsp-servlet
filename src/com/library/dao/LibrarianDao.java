package com.library.dao;
import java.sql.*;

import com.library.bean.Librarian;
import com.mysql.jdbc.Connection;

public class LibrarianDao {

	
	public static int save(Librarian l){
		int status=0;
		try{
			java.sql.Connection con=DB.getConnection();
			PreparedStatement ps=con.prepareStatement("insert into librarian(name,password,email,address,city,contact) values(?,?,?,?,?,?)");
			ps.setString(1,l.getName());
			ps.setString(2,l.getPassword());
			ps.setString(3,l.getEmail());
			ps.setString(4,l.getAddress());
			ps.setString(5,l.getCity());
			ps.setString(6,l.getContact());
			status=ps.executeUpdate();
			con.close();
		}catch(Exception e){System.out.println(e);}
		return status;
	}
	public static int delete(Librarian l){
		int status=0;
		try{
			java.sql.Connection con=DB.getConnection();
			PreparedStatement ps=con.prepareStatement("delete from librarian where id=?");
			ps.setInt(1,l.getId());
			status=ps.executeUpdate();
			con.close();
		}catch(Exception e){System.out.println(e);}
		return status;
	}

	public static boolean validate(String name,String password){
		boolean status=false;
		try{
			java.sql.Connection con=DB.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from librarian where name=? and password=?");
			ps.setString(1,name);
			ps.setString(2,password);
			ResultSet rs=ps.executeQuery();
			status=rs.next();
			con.close();
		}catch(Exception e){System.out.println(e);}
		return status;
	}
	
	public static int update(Librarian l){  
	    int status=0;  
	    try{  
	        java.sql.Connection con=DB.getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	        "update librarian set name=?,password=?,email=?,address=?,city=?,contact=? where id=?");  
	        ps.setString(1,l.getName());  
	        ps.setString(2,l.getPassword());  
	        ps.setString(3,l.getEmail());  
	        ps.setString(4,l.getAddress());  
	        ps.setString(5,l.getCity());  
	        ps.setString(6,l.getContact());  
	        ps.setInt(7, l.getId());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	   

}
