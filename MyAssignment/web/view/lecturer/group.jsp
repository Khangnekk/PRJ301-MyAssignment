<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Group</title>
        <!-- link favicon logo -->
        <link rel="icon" href="#" />
        <!-- link bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
            .topRight span{
                color:white;
                background-color: #5cb85c;
                border-radius: 3px;
                padding: 0 3px;
                font-size: 75%;
            }
            .content{
                display: grid;
                grid-template-columns: 15% 84%;
                margin: 10px auto;
                justify-content: space-between;

            }
            .group{
                border: 1px solid red;
                border-radius: 8px;
                padding: 10px;
                height: 80vh;
            }

            .group-details{
                display: block;
                text-align: center;
                border: 1px solid orange;
                border-radius: 8px;
                padding: 10px;
                height: auto;
                overflow: auto  ;
            }

            .last{
                text-align: center;
                font-size: 14px;
                padding-bottom: 20px;
            }
            .dhead{
                margin: 5px auto;
                background-color: #6b90da;
            }
            .gtitle{
                font-size: 18px;
                font-weight: bold;
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
                padding: 0 5px;
            }
            .table-details{
                border-radius: 9px;
                overflow: hidden;
                white-space: nowrap;
                
            }
            .fullname{
                text-align: left;
                padding: 0 10px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <header>
                <h1>FPT University Academic Portal</h1>
            </header>
            <div class="top">
                <div class="topLeft">
                    <a href="home">Home</a>
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
            <div>
                <div class="row content">
                    <div class="group">
                        <div class="gtitle">>List of Group:</div>
                        <div class="gcontent">
                            <ul>
                                <c:forEach items="${requestScope.groups}" var="g">
                                    <li>
                                        <a href="group?email=${sessionScope.account.email}&gid=${g.id}">
                                            ${g.name}
                                            -
                                            ${g.subject.name}
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>                        
                    </div>
                    <div class="group-details">
                        <div class="instruction" style="text-align: left">
                            Note: 
                            <ul>
                                <li>
                                    Numbers from 01 to 30 correspond to slot 1 to slot 30
                                </li>
                                <li>
                                    If column Absent exceeds ?%, this student will fail the course
                                </li>
                            </ul>             
                        </div>
                        <table class="table-details">
                            <tr class="dhead">
                                <td>STUDENT</td>
                                <td style="white-space: pre-wrap;">GROUP NAME</td>
                                <c:forEach items="${sessionScope.sessionsByGidAndLeid}" var="sesByGAL">
                                    <td>Slot ${sesByGAL.index}</td>
                                </c:forEach>
                                <td style="color: white; font-weight: bold">Absent</td>
                            </tr> 
                            <c:forEach items="${sessionScope.students}" var="stu">
                                <tr>
                                    <td class="fullname">${stu.name}</td>
                                    <td>
                                        ${sessionScope.group.name}
                                    </td>

                                    <c:forEach items="${sessionScope.sessionsByGidAndLeid}" var="sesByGAL">
                                        <%--<c:if test="${(sessionScope.attendances.session.id eq sesByGAL.id) and(sessionScope.attendances.student.id eq stu.id) }">--%>
                                        <!--sessionScope.attendances.present-->
                                        <%--</c:if>--%>
                                        <td>
                                            <c:forEach items="${sessionScope.attendances}" var="att">
                                                <c:if test="${(att.student.id eq stu.id) and (att.session.id eq sesByGAL.id)}">
                                                    <c:if test="${att.present}">
                                                        <a style="color: #5cb85c">v</a>
                                                    </c:if>
                                                    <c:if test="${!att.present}">
                                                        <a style="color: red">x</a>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
                                        </td>
                                    </c:forEach>

                                    <td style="color: green">0%</td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>

                </div>
            </div>
            <div class="last">
                <b>For any comments or questions, please contact:</b> Student Service Department : Email: <a href="mailto:dichvusinhvien@fe.edu.vn">dichvusinhvien@fe.edu.vn</a> . Phone: <b>(024)7308.13.13</b><br>
                Powered by <a href="">FPT University</a> |  <a href="">CMS</a> |  <a href="">library</a> |  <a href="">books24x7</a>
            </div>
        </div>
    </body>
</html>