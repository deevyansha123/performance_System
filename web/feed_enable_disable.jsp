<%-- 
    Document   : delete_emp
    Created on : 2 Sep, 2021, 9:16:45 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="fom" action="feedback_ed.jsp" method="post">
                <table>
                    <tr>
                        <td>
                            Email ID
                        </td>
                        <td>
                            <input type="email" name="email" value="">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Feedback State
                        </td>
                        <td>
                            <select name="feedback_state">
                            <option value="0">False</option>
                            <option value="1">True</option>
                          </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit">
                        </td>
                    </tr
                </table>
        </form>
    </body>
</html>
