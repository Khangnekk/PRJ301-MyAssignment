<%-- 
    Document   : login
    Created on : Oct 17, 2022, 9:29:29 PM
    Author     : Khangnekk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .login-form{
                width: 300px;
                margin: 10em auto;
                padding: 15px;
                border: 1px solid #ccc;
                border-radius: 9px;
            }
            .login-form h2{
                text-align: center; 
            }
            .noti p{
                color: red;
            }
        </style>
    </head>
    <body>
        <div class="login-form">
            <form action="login" method="POST">
                <table>
                    <h2>Login FAP for Lecturer</h2>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value=""/></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="password" value=""/></td>
                    </tr>
                    <tr class="noti">
                        <td colspan="2">
                            <p>${noti}</p>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td style="text-align: center"><input type="submit" value="Login" /> </td>
                    </tr>
                    
                </table>
            </form> 
        </div>   
    </body>
</html>
