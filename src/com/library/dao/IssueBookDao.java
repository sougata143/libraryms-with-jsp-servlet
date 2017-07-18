package com.library.dao;
import com.library.bean.Book;
import com.library.bean.IssueBook;
import java.sql.*;


public class IssueBookDao {
	
public static boolean checkBook(String bookcallno){
	boolean status=false;
	try{
		Connection con=DB.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from books where callno=?");
		ps.setString(1,bookcallno);
	    ResultSet rs=ps.executeQuery();
		status=rs.next();
		con.close();
	}catch(Exception e){System.out.println(e);}
	return status;
}

public static boolean delete(Book b){
	boolean status=false;
	try{
		Connection con=DB.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from books where studentid=?");
		ps.setInt(1,b.getId());
	    ResultSet rs=ps.executeQuery();
		status=rs.next();
		con.close();
	}catch(Exception e){System.out.println(e);}
	return status;
}


public static int save(IssueBook b){
	int status=0;
	try{
		Connection con=DB.getConnection();
		
		status=updatebook(b.getBookcallno());//updating quantity and issue
		
		if(status>0){
		PreparedStatement ps=con.prepareStatement("insert into issuebooks(bookcallno,studentid,studentname,studentcontact,issuedate) values(?,?,?,?,?)");
		ps.setString(1,b.getBookcallno());
		ps.setInt(2,b.getStudentid());
		ps.setString(3,b.getStudentname());
		ps.setString(4,b.getStudentcontact());
                ps.setString(5, b.getIssueddate());
		status=ps.executeUpdate();
		}
		
		con.close();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int updatebook(String bookcallno){
	int status=0;
	int quantity=0,issued=0;
	try{
		Connection con=DB.getConnection();
		
		PreparedStatement ps=con.prepareStatement("select quantity,issued from books where callno=?");
		ps.setString(1,bookcallno);
		ResultSet rs=ps.executeQuery();
		if(rs.next()){
			quantity=rs.getInt("quantity");
			issued=rs.getInt("issued");
		}
		
		if(quantity>0){
		PreparedStatement ps2=con.prepareStatement("update books set quantity=?,issued=? where callno=?");
		ps2.setInt(1,quantity-1);
		ps2.setInt(2,issued+1);
		ps2.setString(3,bookcallno);
		
		status=ps2.executeUpdate();
		}
		con.close();
	}catch(Exception e){System.out.println(e);}
	return status;
}
}
