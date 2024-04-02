package dao;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.rowset.serial.SerialBlob;

import java.sql.Blob;
import java.sql.Connection;

import dto.Task;
import dto.User;

public class Dao
{
	public static Connection getConnection() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","root");
		return con;
	}
	public static int saveUser(User user) throws ClassNotFoundException, SQLException
	{
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("insert into project value(?,?,?,?,?,?)");
		pst.setInt(1, user.getUserid());
		pst.setString(2, user.getUsername());
		pst.setString(3, user.getUseremail());
		pst.setLong(4, user.getUsercontact());
		pst.setString(5, user.getUserpassword());
		
		Blob imageBlog =new SerialBlob(user.getUserimage());
		pst.setBlob(6, imageBlog);
		int res=pst.executeUpdate();
		return res;	
	}
   public User findByEmail(String email) throws SQLException, ClassNotFoundException
   {
	   Connection con=getConnection();
	   PreparedStatement pst=con.prepareStatement("select * from project where useremail=?");
	   pst.setString(1, email);
	   ResultSet rs=pst.executeQuery();
	   if(rs.next())
	   {
		   User u= new User();
		   u.setUserid(rs.getInt(1));
		   u.setUsername(rs.getString(2));
		   u.setUseremail(rs.getString(3));
		   u.setUsercontact(rs.getLong(4));
		   u.setUserpassword(rs.getString(5));
//		   convert blob to byte array
		   Blob imageBlob = rs.getBlob(6);
		   byte[]image=imageBlob.getBytes(1, (int)imageBlob.length());
		   u.setUserimage(image);
		   return u;
	   }
	   else {
		   return null;
	   }
	   
   }
   
   public int createtask(Task task) throws ClassNotFoundException, SQLException
   {
	   	Connection con=getConnection();
	   	PreparedStatement pst=con.prepareStatement("insert into task values(?,?,?,?,?,?,?)");
	   	pst.setInt(1, task.getTaskid());
	   	pst.setString(2, task.getTasktitle());
	   	pst.setString(3, task.getTaskdescription());
	   	pst.setString(4, task.getTaskpriority());
	   	pst.setString(5, task.getTaskduedate());
	   	pst.setString(6, task.getTaskstatus());
	   	pst.setInt(7, task.getUserid());
	   	
	   	int res=pst.executeUpdate();
	   	
	    return res;
	   
   }
   
}
