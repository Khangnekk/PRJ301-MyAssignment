<%-- 
    Document   : getInfo
    Created on : Oct 27, 2022, 8:33:30 PM
    Author     : Khangnekk
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>FAP University Academic Portal</title>
        <!-- link favicon logo -->
        <link rel="icon" href="assets/favicon/fu-favicon.jpg" />
        <!-- link bootstrap -->
        <link rel="stylesheet" href="assets/css/bootstrap/bootstrap.min.css"/>
        <!--link font-awesome-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
        <style>

            html, body {
                height: 100%;
            }
            body{
                margin: 0;
                padding: 0;
            }
            .container{
                margin: 0 auto;
            }
            .top{
                display: flex;
                background-color: #f5f5f5;
                padding: 10px;
                justify-content: space-between;
                border-radius: 6px;
            }
            .top a{
                text-decoration: none;
            }
            .topRight span{
                color:white;
                background-color: #5cb85c;
                border-radius: 3px;
                padding: 0 3px;
                font-size: 75%;
            }

            .last{
                text-align: center;
                font-size: 14px;
                padding-bottom: 20px;
            }
            .dhead{
                text-align: center;
                margin: 5px auto;
            }
            .main-content{
                width: 40%;
                margin: 40px auto;
                text-align: center;
                border: 1px solid #ccc;
                border-radius: 9px;
                padding: 20px 10px;
            }
            .getGroupAndSlot{
                margin: 40px auto;
            }
            .main-content a{
                text-decoration: none;
            }
            .input-info select{
                border-radius: 8px;
                padding: 3px;
                text-align: center;
            }
            .partName{
                width: 30%;
                text-align: center;
                margin: -18px auto 23px auto;
                border-radius: 9px;
                color: white;
                background-image: linear-gradient(#feb52a,#f08e01);
                font-size: 24px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <header>
                <h1><img style="width: 100px;" src="assets/img/fpt-logo.png"> FPT University Academic Portal</h1>
            </header>
            <div class="top">
                <div class="topLeft">
                    <a href="home"><i class="fas fa-home" style="color: orangered; font-size: 25px"></i></a>
                    <a>| <b>View Schedule</b></a>
                </div>
                <div class="topRight">
                    Nickname:
                    <a href="#">
                        <span>
                            <c:if test="${sessionScope.account ne null}">
                                ${sessionScope.account.username}
                            </c:if>
                        </span>
                    </a>
                    &nbsp;|
                    <a href="logout">
                        <span>
                            logout
                        </span>
                    </a>
                    &nbsp;|
                    <a href="#">
                        <span>
                            Campus: FPTU - Hoa Lac
                        </span>
                    </a>
                </div>
            </div>
            <div class="main-content">
                <h3>Select group and select session</h3>
                <div class="getGroupAndSlot">
                    <form action="getInfo?gid=-1">
                        <div class="input-info">
                            <select id="groupid" name="gid" style="padding: 1.5px; border-radius: 6px;">
                                <option  value="-1">-- Select Group --</option>
                                <c:forEach items="${requestScope.groups}" var="g">                            
                                    <option "
                                            <c:if test="${requestScope.group.id eq g.id}">
                                                selected="selected"

                                            </c:if>
                                            value="${g.id}">
                                        ${g.name} - ${g.subject.name}
                                    </option>
                                </c:forEach>
                            </select>
                            <select id="gid_element" name="seid" style="text-align: center;">
                                <option value="-1">-- Select slot --</option>
                                <c:forEach items="${requestScope.sessionsByGidAndLeid}" var="SBI">
                                    <option id="gid_element" value="${SBI.id}" <c:if test="${SBI.id eq seid}">
                                            selected="selected"
                                        </c:if>>
                                        Slot ${SBI.index} / ${SBI.date}                        
                                    </option>
                                </c:forEach>
                            </select>
                            <input type="hidden" value="${sessionScope.email}" name="email">
                            <input id="submit" type="submit" value="" style="border-radius: 6px">
                        </div>
                    </form>
                </div>
                <div>
                    <form action="getInfo" method="post">
                        <input type="hidden" value="${requestScope.emailInfo}" name="emailInfo">
                        <input type="hidden" value="${requestScope.gidInfo}" name="gidInfo">
                        <input type="hidden" value="${requestScope.seInfo}" name="seidInfo">
                        <input id="submit2" type="submit" value="Take Attendance" style="border-radius: 6px">
                    </form>
                </div>
                <p id="content" style="margin-top: 5px; color: red"></p>
                <p id="content2" style="margin-top: 5px; color: red"></p>
            </div>
            <div class="last">
                <b>For any comments or questions, please contact:</b> Student Service Department : Email: <a href="mailto:dichvusinhvien@fe.edu.vn">dichvusinhvien@fe.edu.vn</a> . Phone: <b>(024)7308.13.13</b><br>
                Powered by <a href="">FPT University</a> |  <a href="">CMS</a> |  <a href="">library</a> |  <a href="">books24x7</a>
            </div>
        </div>
    </body>
    <script>
        var x1 = document.getElementById("groupid").value;
        var x2 = document.getElementById("gid_element").value;
        const noti = document.getElementById("content");
        const noti2 = document.getElementById("content2");
        if (x1 <= 0) {
            document.getElementById("gid_element").style.display = 'none';
            document.getElementById("submit2").style.display = 'none';
            document.getElementById("submit").value = 'Search group';
            noti.innerHTML = "*Select the group you want to take attendance";
            noti2.innerHTML = "STATUS: Not ready to take attendance (1/3)";
        } else {
            document.getElementById("gid_element").style.display = 'initial';
            document.getElementById("submit2").style.display = 'none';
            document.getElementById("submit").value = 'Search session';
            noti.innerHTML = "*Now you have to choose the session you want to take attendance";
            noti2.innerHTML = "STATUS: Not ready to take attendance (2/3)";
        }
        if (x1 > 0 && x2 > 0) {
            noti.innerHTML = "STATUS: Ready to take attendance (3/3)";
            noti.style.color = 'green';
            noti2.innerHTML = "Click the button \"Take Attendance\" above to take attendance now";
            noti2.style.color = 'green';
            document.getElementById("submit2").style.display = 'initial';
        }
    </script>
</html>