<html>
    <head>
        <title>Employee Panel</title>
        
        <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"
    />
    <style>
      body {
        background-color: palegreen;
      }
    </style>
    </head>
    <body>
        <div class="container">
            <h2 style="text-align:center;" class="my-5" word-spacing: 15px;>Welcome <% out.print((String)session.getAttribute("user_name")); %>. Have A Great Day!</h1>
        <a href="feedback.jsp" class="btn btn-danger text-center" style="text-align:center;margin-left: 450px;">Feedback Form </a>
        <a href="logout.jsp" class="btn btn-danger text-center mt-2" style="text-align:center;margin-left: 450px;">Logout </a>
        </div>
        
    </body>
</html>