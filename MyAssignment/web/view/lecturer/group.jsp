<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Group</title>
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
            .topLeft a {
                color: black;
                font-size: 20px;
                padding: 2px 10px;
                border: 2px solid #ccc;
                border-radius: 6px;
            }
            .topRight span{
                color:white;
                background-color: #5cb85c;
                border-radius: 3px;
                padding: 0 3px;
                font-size: 75%;
            }
            .content{
                display: flex;
                /*grid-template-columns: 15% 84%;*/
                margin: 10px auto;
                justify-content: space-between;

            }
            .group{
                text-align: center;
                margin: 10px auto;
            }

            .group-details{
                display: block;
                text-align: center;
                padding: 10px;
                height: auto;
                overflow: auto  ;
            }

            .dhead{
                margin: 5px auto;
                background-color: #6b90da;
            }
            .gcontent ul li{
                list-style: square;
            }
            .gcontent a{
                text-decoration: none;
            }
            .gcontent a:hover{
                color: #feb52a;
            }
            table td{
                border: 1px solid #ccc;
                padding: 5px 5px;
            }
            .table-details{
                border-radius: 9px;
                overflow: hidden;
                white-space: nowrap;
                margin: 5px auto;
            }
            .fullname{
                text-align: left;
                padding: 0 10px;
            }
            .table-details img{
                width: 20px;
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
                    <a href="home">Home</a>
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
            <div>
                <div class="row content">
                    <div class="group">
                        <div class="gcontent">
                            <form action="group" method="post">

                                <select name="gid" style="padding: 1.5px; border-radius: 6px;">
                                    <option id="groupid" value="-1">-- Select Group --</option>
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
                                <input type="hidden" value="${sessionScope.account.email}" name="email">

                                <input style="border-radius: 6px; border: 1px solid #ccc;" onload="loading()" type="submit" value="Search"/> 
                                <input style="border-radius: 6px; border: 1px solid #ccc;" type="reset" value="Re-select"/>
                            </form>
                        </div>                        
                    </div>
                    <div class="group-details">
                        <c:if test="${requestScope.sessionsByGidAndLeid ne null}">
                            <table class="table-details">
                                <tr class="dhead">
                                    <td>STUDENT</td>
                                    <td style="white-space: pre-wrap;">GROUP NAME</td>
                                    <c:forEach items="${requestScope.sessionsByGidAndLeid}" var="sesByGAL">
                                        <td>Slot ${sesByGAL.index}<br>${sesByGAL.date}</td>
                                        </c:forEach>
                                    <td style="color: white; font-weight: bold">Absent</td>
                                </tr> 
                                <c:forEach items="${requestScope.students}" var="stu">
                                    <tr>
                                        <td class="fullname">${stu.name}</td>
                                        <td>
                                            ${requestScope.group.name}
                                        </td>
                                        <% int x = 0; int y = 0; double k;%>
                                        <c:forEach items="${requestScope.sessionsByGidAndLeid}" var="sesByGAL">
                                            <td>
                                                <c:forEach items="${requestScope.attendances}" var="att">
                                                    <c:if test="${(att.student.id eq stu.id) and (att.session.id  eq sesByGAL.id)}">

                                                        <c:if test="${!sesByGAL.attendated}">
                                                            <a style="color: #ccc">- not yet -</a>
                                                        </c:if>
                                                        <c:if test="${sesByGAL.attendated}">
                                                            <c:if test="${att.present}">
                                                                <!--<a style="color: #5cb85c">present</a>-->
                                                                <img src="assets/img/attend.png">
                                                            </c:if>
                                                            <c:if test="${!att.present}">
                                                                <% x++; %>
                                                                <img src="assets/img/absent.png">
                                                            </c:if>
                                                        </c:if>
                                                    </c:if>
                                                </c:forEach>
                                            </td>
                                            <% y++; %>
                                        </c:forEach>

                                        <%
                                        k = (x*100)/y;
                                        %>

                                        <% if (k>20) { %>
                                        <td style="color: red">
                                            <%=k%> %
                                        </td>
                                        <% } else { %>
                                        <td style="color: green">
                                            <%=k%> %
                                        </td>
                                        <% } %>
                                    </tr>
                                </c:forEach>
                            </table>
                        </c:if>
                    </div>

                </div>
            </div>
        </div>
    </body>
    <script>

    </script>
</html>