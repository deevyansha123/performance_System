<%-- 
    Document   : data
    Created on : 27 Aug, 2021, 10:46:37 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String first_name = request.getParameter("t1");
            String middle_name=request.getParameter("t2");
            String l_name = request.getParameter("t3");
            String email_id =request.getParameter("t4");
            String password =request.getParameter("t5");
            String designation =request.getParameter("t6");
            String band =request.getParameter("t7");
            String phone_no =request.getParameter("t8");
            String skills =request.getParameter("t9");            
            String reporting_manager =request.getParameter("t10");
            String allocated_project =request.getParameter("t11");

            
            String qry="INSERT INTO `employee_details` (`id`,`first_name`,`middle_name`,`last_name`,`email_id`,`Password`,`designation`,`band`,`skills`,`phone_no`,`reporting_manager`,`allocated_project`) VALUES (NULL,'"+first_name+"', '"+middle_name+"','"+l_name+"','"+email_id+"','"+password+"','"+designation+"','"+band+"','"+skills+"','"+phone_no+"','"+reporting_manager+"','"+allocated_project+"'  );";
            %>        
            <jsp:include page="connection.jsp">
                <jsp:param name="qry" value="<%=qry%>"/>  
            </jsp:include>
            <% response.sendRedirect("sucess.jsp"); %>
    </body>
</html>
