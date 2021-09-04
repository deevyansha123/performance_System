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
        <form name="fom" action="delete.jsp" method="get">
                <table>
                    <tr>
                        <td>
                            Email ID
                        </td>
                        <td>
                            <input type="email" name="delemp" value="">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="delete employee">
                        </td>
                    </tr
                </table>
        </form>
    </body>
</html>
