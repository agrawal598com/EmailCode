<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
  String email = request.getParameter("email");
  Connection con = null;
  try{
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb", "root", "root");
    String sql = "update user set status = ? where email = ?";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, "true");
    ps.setString(2,email);
    if(ps.executeUpdate() !=0)
     out.print("Account Varified...");
  }
  catch(Exception e)
  {
    e.printStackTrace();
  }
  finally{
     try{
       con.close();
     }
     catch(Exception e)
     {
        e.printStackTrace();
       
     }
  }
%>