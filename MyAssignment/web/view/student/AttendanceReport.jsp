<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>FAP University Academic Portal</title>
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
                margin: 0 auto;
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
            .gcontent{
                text-align: center;
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
                <h1><img style="width: 100px;" src="assets/img/fpt-logo.png">FPT University Academic Portal</h1>
            </header>
            <div class="top">
                <div class="topLeft">
                    <a href="student_home">Home</a>
                </div>
                <div class="topRight">
                    <a href="#">
                        <span>
                            <c:if test="${sessionScope.account ne null}">
                                ${sessionScope.account.username}
                            </c:if>
                        </span>
                    </a>
                    &nbsp;|
                    <a href="studentLogout">
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
            <div class="main-contain">                
                <h3>Attendance report for student: </h3>
                <b>Fullname:</b> ${requestScope.student.name} //
                <b>StudentID:</b> ${requestScope.student.id}
                <marquee>
                    <p style="color: red">
                        If the percentage of absent is greater than 20, 
                        the student will not be able to take the exam for
                        that semester of that subject
                    </p>
                </marquee>
                <div>
                    <div class="gcontent">
                        <form action="studentAttendanceReport" method="post">
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
                    <div class="group-details">
                        <table class="table-details">
                            <tr class="dhead">
                                <td>No</td>
                                <td>Date</td>
                                <td>Slot</td>
                                <td>Room</td>
                                <td>Lecturer</td>
                                <td>Group Name</td>
                                <td>Attendance Status</td>
                                <td>Lecturer comment</td>
                            </tr> 
                            <% int x = 0; int y = 0; double k;%>
                            <c:forEach items="${requestScope.sessionsByGid}" var="sesBG">
                                <tr>
                                    <td>${sesBG.index}</td>
                                    <td>${sesBG.date}</td>
                                    <td>${sesBG.timeslot.name} (${sesBG.timeslot.description})</td>
                                    <td>${sesBG.room.name}</td>
                                    <td>${sesBG.lecturer.name}</td>
                                    <td>${sesBG.group.name}</td>
                                    <c:forEach items="${requestScope.attendances}" var="att">
                                        <c:if test="${(att.student.id eq requestScope.student.id) and (att.session.id  eq sesBG.id)}">
                                            <td>
                                                <c:if test="${!sesBG.attendated}">
                                                    <a style="color: #ccc">- not yet -</a>
                                                </c:if>
                                                <c:if test="${sesBG.attendated}">
                                                    <c:if test="${att.present}">
                                                        <!--<a style="color: #5cb85c">present</a>-->
                                                        <img src="assets/img/attend.png">
                                                    </c:if>
                                                    <c:if test="${!att.present}">
                                                        <% x++; %>
                                                        <img src="assets/img/absent.png">
                                                    </c:if>
                                                </c:if>
                                            </td>
                                            <td>${att.description}</td>
                                        </c:if>
                                    </c:forEach>                                   
                                </tr>
                                <% y++; %>
                            </c:forEach>
                                <tr style="font-weight: bold">                                
                                <%
                                    if (y!=0) {
                                    k = (x*100)/y;                                   
                                %>

                                <% if (k>20) { %>
                                <td style="color: red" colspan="8">
                                    Absent: <%=k%> %
                                </td>
                                <% } else { %>
                                <td style="color: green" colspan="8">
                                    Absent: <%=k%> %
                                </td>
                                <% }} %>                                
                            </tr>
                        </table>

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>