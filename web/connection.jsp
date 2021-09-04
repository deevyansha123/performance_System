<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
        <%
            Connection conn=null;
            Statement st=null;
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/company","root","");
                st=conn.createStatement();
                String query = request.getParameter("qry");
                st.executeUpdate(query);
                
            }
            catch(Exception ex) {
            out.print(ex.getMessage());
            }
            
        %>