<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>



<%

 if (request.getParameter("account") !=null && !request.getParameter("account").equals("") 
	&& request.getParameter("Member_pwd") != null && !request.getParameter("account").equals("")){
		
	sql = "SELECT * FROM `member` WHERE `Member_acc`=? AND `Member_pwd`=?"; 
	  PreparedStatement pstmt = null;
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1,request.getParameter("account"));
		pstmt.setString(2,request.getParameter("Member_pwd"));
	
    ResultSet rs =pstmt.executeQuery();
    
    if(rs.next()){            
        session.setAttribute("Member_acc",request.getParameter("account"));
		con.close();//結束資料庫連結
		out.print("<script>alert('登入成功');window.location='T_memberdetail.jsp'</script>") ;
    }
    else{
		con.close();//結束資料庫連結
        out.print("<script>alert('帳號密碼錯誤');window.location='index.jsp'</script>") ;
	}
}
else
	out.print("<script>alert('帳號密碼錯誤');window.location='index.jsp'</script>") ;
    
%>