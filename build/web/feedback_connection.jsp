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
            String feedback = request.getParameter("feedback");
            Integer id =(Integer)session.getAttribute("id");
            Integer feedback_id= 0;
        
            String qry="UPDATE `feedback` SET feedback_data='"+feedback+"', feedback_state="+feedback_id+" WHERE employee_details_fk="+id+"";
            %>        
            <jsp:include page="connection.jsp">
                <jsp:param name="qry" value="<%=qry%>"/>  
            </jsp:include>
                        <% response.sendRedirect("sucess.jsp"); %>

    </body>
</html>
