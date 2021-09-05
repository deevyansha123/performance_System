
<html>
    <head>
        <title>Update Employee</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
        body {
        background-color: background;
      }
    </style>
    </head>
    <body>
        <h1 style="text-align:center;">Update Employee</h1>
        <center>    
            <form name="frm" action="update.jsp" method="post">
                <table>                    
                  <tr>
                        <td>
                            Email ID 
                        </td>
                        <td>
                            <input type="text" name="email_id" value="">
                        </td>
                    <tr>
                    <tr>
                        <td>
                            Designation
                        </td>
                        <td>
                            <select id="designation" name="t6" size="1">
                            <option value="Software Engineer">Software Engineer</option>
                            <option value="Software QA">Software QA</option>
                            <option value="Engineering Manager">Engineering Manager</option>
                            <option value="Engineering Director">Engineering Director</option>
                            <option value="HR">HR</option>
                            <option value="IT Consultant">IT Consultant</option>
                            <option value="Finance Consultant">Finance Consultant</option>
                            <option value="CTO">CTO</option>
                          </select>
                        </td>
                    </tr>
                    <tr>
                        <tr>
                        <td>
                            Band
                        </td>
                        <td>
                            <select id="Band" name="t7" size="1">
                            <option value="1">Band 1 ( Software Engineer/QA/IT Consultant/Finance Consultant)</option>
                            <option value="2">Band 2 (Lead Engineer and QA)</option>
                            <option value="3">Band 3 (Engineering Manager)</option>
                            <option value="4">Band 4 (Engineering Director)</option>
                            <option value="5">Band 5 (Vice President)</option>
                            <option value="6">Band 6(CTO)</option>
                            <option value="7">Band 7 (CEO)</option>
                          </select>
                        </td>
                    </tr>
                 <tr>
                        <td>
                            Reporting Manager
                        </td>
                        <td>
                            <input type="text" name="t10" value="">
                        </td> 
                    </tr>                    <tr>
                        <td>
                            Allocated Project
                        </td>
                        <td>
                            <input type="text" name="t11" value="">
                        </td> 
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="Submit" value="Submit"/>
                        </td>
                    </tr>
                </table>
                </form>
        </center>
    </body>
</html>
