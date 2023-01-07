<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>
<html lang="en">

<% 
   session.removeAttribute("Member_acc");
   out.print("<script>alert('已登出');</script>"); 
   response.setHeader("refresh","0;URL=index.jsp");
%>
</html>