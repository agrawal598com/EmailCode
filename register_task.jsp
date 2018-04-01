<%@page import="service.SendMailSSL"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
   Connection con = null;
   try{
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb", "root", "root");
   
    String email = request.getParameter("txtemail");
    String pass = request.getParameter("txtpass");
    String mobile = request.getParameter("txtmobile");
  
    String sql = "insert into user(email,password,mobile,status) values(?,?,?,?)";
    PreparedStatement ps  = con.prepareStatement(sql);
    ps.setString(1, email);
    ps.setString(2, pass);
    ps.setString(3,mobile);
    ps.setString(4,"false" );
    if(ps.executeUpdate() != 0)
    {
      SendMailSSL.sendEmail(email);
      out.print("success");
    }
    
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