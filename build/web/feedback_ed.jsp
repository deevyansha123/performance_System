<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
             <%
                String email_id = request.getParameter("email");
                Integer feedback_state = Integer.parseInt(request.getParameter("feedback_state"));

                String query = "UPDATE `feedback` SET feedback_state="+feedback_state+" WHERE employee_details_fk=(select id from `employee_details` WHERE email_id='"+email_id+"')";
              %>
            <jsp:include page="connection.jsp">
                <jsp:param name="qry" value="<%=query%>"/>  
            </jsp:include>
            <% response.sendRedirect("sucess.jsp");%>
    </body>
</html>