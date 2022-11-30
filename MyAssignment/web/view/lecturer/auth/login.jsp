<%-- 
    Document   : login
    Created on : Oct 17, 2022, 9:29:29 PM
    Author     : Khangnekk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login FAP for Lecturer</title>
        <link rel="stylesheet" href="assets/css/myStyle/Style.css">
        <link rel="icon" href="assets/favicon/fu-favicon.jpg" />
        <style>
            body{
                background-image: url('assets/img/bg.jpg');
            }
            p{
                color: red;
            }
            h2{
                color: white;
                font-family: cursive;
            }
        </style>
    </head>
    <body>
        <div class="login-form">
            <img style="width: 100px;" src="assets/img/fpt-logo.png">
            <form action="login" method="POST">
                <div class="login-t itle">
                    <h2>Login FAP for Lecturer</h2>
                </div>
                <div class="login-input-data">
                    <div class="input-data"><input type="text" placeholder="Email" name="email" value=""/></div>
                    <div class="input-data"><input type="password" placeholder="password" name="password" value=""/></div>
                    <p>${noti}</p>
                    <input class="login-button" type="submit" value="Login"/>
                </div>                
            </form> 
        </div>   
    </body>
</html>
