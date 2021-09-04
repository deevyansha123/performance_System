<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <body>
        <%
            String user_email = request.getParameter("email");
            String user_pass=request.getParameter("password");          
            
            Connection conn=null;
            Statement st=null;
            try
            {   
                Class.forName("com.mysql.jdbc.Driver");
                conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/company","root","");
                Statement statement = conn.createStatement() ;
                ResultSet resultset =
                statement.executeQuery("select * from employee_details") ;
                while(resultset.next()){
                %>
                <% String email = resultset.getString("email_id");
                    Integer id = resultset.getInt("id");
                    String password = resultset.getString("password");
                    String role = resultset.getString("designation");
                    String band = resultset.getString("band");
                    String user_name = resultset.getString("first_name");
                    if(user_email.equals(email) && user_pass.equals(password)){
                        if(role.equals("Admin")){
                            response.sendRedirect("admin_dashboard.jsp");
                            session.setAttribute("role",role);
                        }
                        else if(band.equals("1")){
                            response.sendRedirect("employee_dashboard.jsp");
                            session.setAttribute("user_name",user_name);
                            session.setAttribute("role",role);
                            session.setAttribute("email",user_email);
                            session.setAttribute("id",id);
                        }
                    }
               }
                                  response.sendRedirect("userNotFound.jsp");       
            }catch(Exception ex) {
            out.print(ex.getMessage());
            }
            
        %>
    </body>
</html>
