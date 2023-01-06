<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%
try {
	Class.forName("com.mysql.jdbc.Driver");
	
		try {
				String url="jdbc:mysql://localhost/?serverTimezone=UTC";
				Connection con=DriverManager.getConnection(url,"root","1234");
				String sql="USE `final_db`";
				con.createStatement().execute(sql);
				String account = request.getParameter("account");
				String password = request.getParameter("password");
				String phone = request.getParameter("phone");
					
				try{
				sql = "INSERT `member`(`Member_acc`, `Member_pwd` , `Member_phone`)"+" VALUES('"+account+"','"+password+"','"+phone+"')";
				con.createStatement().execute(sql);
					out.print("<script>alert('註冊成功，請登入');window.location='index.jsp'</script>");
				con.close();//結束資料庫連結
				}
				catch(SQLException sExec){
					out.print("<script>alert('註冊失敗，返回登入');window.location='index.jsp'</script>");
					out.print(sql);
					con.close();//結束資料庫連結
				}
		}
		catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
    out.println("class錯誤"+err.toString());
}
%>

