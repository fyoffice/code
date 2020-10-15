package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import vo.User;

public class UserDao {
	  public User get(String userName) {
		  User user= null;
	  try {
		  Class.forName("com.mysql.jdbc.Driver");
		  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fff?useunicode=ture&character=utf-8","root","123456");
		  //判断数据库能否获取值
		  if(con==null)
		  {
			  System.out.println("no");
		  }
		  else
		  {
			  System.out.println("yes");
		  }
		  String sql="select * from t_user where userName=?";
		  PreparedStatement pst = con.prepareStatement(sql);
		  pst.setString(1, userName);
		  ResultSet rs =pst.executeQuery();
		  if(rs.next()) {
			  user=new User(rs.getString("userName"),rs.getString("password"),rs.getString("chrName"),rs.getString("role"));
		  }
		  con.close();
	  }
	     catch(Exception e) {
		    e.printStackTrace();
	    }
		  return user;
	  }
	  public User get(String userName,String password) {
		   User user=null;
		   
		   return user;
		   }
	}