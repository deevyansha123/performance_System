<%@page import="java.sql.*"%>
<html>
    <head>
        <title>Employee FeedBack Form</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
            body{
                background-color: purple;
            }
            #styling{
                /* border: 2px solid gray; */
                margin-top: 800px;
            }
           
        </style>
    </head>
    <body>
        <div class="mt-5 mb-5" id="styling" style="margin-top: 400px;">
        <center class="mt-5">   
            <h1 style="text-align:center;" class="text-primary">Feedback Form</h1> 
            <form name="frm" action="feedback_connection.jsp" method="post">
                <div class="form-floating mr-5 ml-5">
                  <textarea class="form-control" placeholder="Leave a comment here" name="feedback" id="floatingTextarea2" style="height: 100px"></textarea>
                </div>
        <%
            String user_email = (String)session.getAttribute("email");
            Connection conn=null;
            Statement st=null;
            try
            {   
                Class.forName("com.mysql.jdbc.Driver");
                conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/company","root","");
                Statement statement = conn.createStatement() ;
                ResultSet resultset =
                statement.executeQuery("select * from feedback f INNER JOIN employee_details emp where f.employee_details_fk=emp.id and emp.email_id='"+user_email+"' ") ; 
                String feedbackstate = "";
                while(resultset.next()){
                    feedbackstate = resultset.getString("feedback_state");
                }
            if(feedbackstate.equals("1")){ %>
                            <div class="mt-3 ml-5 mr-5">
                            <input type="Submit" class="btn btn-success btn-block" value="Submit" class="form-control">
                            </div>
                            <% } else{ %>
                        <div class="mt-3 ml-5 mr-5">
                            <input type="Submit" class="btn btn-success btn-block" disabled value="Submit" class="form-control">
                            </div>
                            <% }%>
           <% }catch(Exception ex) {
            out.print(ex.getMessage());
            }
            %>
                </form>
        </center>
        </div>
    </body>
</html>