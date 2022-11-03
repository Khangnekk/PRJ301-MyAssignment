<%-- 
    Document   : accessDenied
    Created on : Oct 17, 2022, 11:02:21 PM
    Author     : Khangnekk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Access Denied!</title>
        <link rel="icon" href="assets/favicon/fu-favicon.jpg" />
        <style>
            body{
                background-color: black;
            }
            .content{
                margin: 10em auto;
                width: 50%;
                padding: 15px;
                text-align: center;
                border: 1px solid #ccc;
                border-radius: 9px;
            }
            .content h2{
                font-size: 50px;
                font-family: cursive;
                color: red;
            }
            button{
                border: 1px solid #ccc;
                border-radius: 9px;
                padding: 10px;
                font-family: cursive;
                color: red;
                font-weight: bold;
                font-size: 16px;
            }
            p{
                color: white;
                font-family: cursive;
                font-weight: bold;
                font-size: 16px;
            }
        </style>

    </head>
    <body>
        <div class="content">
            <img style="width: 100px;" src="assets/img/fpt-logo.png">
            <h2>Access denied!</h2>
            <p>You don't have permission to view this<br>
                You need to login first to be able to access</p>
            <button onclick="Login();">> Click here to login</a</button>
        </div>
        <script>
            function Login() {
                window.location = "login";
            }
        </script>
    </body>
</html>
