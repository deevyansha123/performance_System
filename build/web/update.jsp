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
            String email_id = request.getParameter("email_id");
            String designation =request.getParameter("t6");
            String band =request.getParameter("t7");
            String reporting_manager =request.getParameter("t10");
            String allocated_project =request.getParameter("t11");

            
            String qry="UPDATE `employee_details` SET designation='"+designation+"',band='"+band+"',reporting_manager='"+reporting_manager+"',allocated_project='"+allocated_project+"' WHERE email_id='"+email_id+"';";
            %>        
            <jsp:include page="connection.jsp">
                <jsp:param name="qry" value="<%=qry%>"/>  
            </jsp:include>
            <% response.sendRedirect("sucess.jsp"); %>
    </body>
</html>
