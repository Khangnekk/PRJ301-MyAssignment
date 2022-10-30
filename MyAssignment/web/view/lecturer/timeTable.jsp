<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="DateTimeHelper" class="util.DateTimeHelper"/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Schedule Of Lecturer</title>
        <!-- link favicon logo -->
        <link rel="icon" href="#" />
        <!-- link bootstrap -->
        <link rel="stylesheet" href="assets/css/bootstrap/bootstrap.min.css"/>
        <!-- link Style.css -->
        <link rel="stylesheet" href="assets/css/myStyle/Style.css">
        <style>
            .table{
                border-radius: 9px;
                overflow: hidden;
                height: 100%;
                display: flex;
                align-items: center;
                justify-content: center;

            }
            table tr td {
                padding:0 10px;
                border:1px solid black;
            }
            .table .htable{
                background-color: #6b90da;
                text-align: center;
            }
            .dhead input{
                border-radius: 6px;
                border: 1px solid #ccc;
                margin-top: 5px;
                padding: 2px 5px;
            }

            .info {
                text-decoration: none;
                color: #6b90da;
            }
            .attended {
                text-decoration: none;
                color: green;
            }
            .not_yet {
                text-decoration: none;
                color: red;
            }
            .table button{
                background-color: #6b90da;
                border-radius: 8px;
                border: 1px solid white;
                color: white;
                line-height: 18px;
            }
            .table button:hover{
                background-color: #3366cc;
            }
            .timeslot{
                text-align: left;
            }
            .tdes{
                color: #f08e01;
                text-decoration: none;
            }
            .tname{
                font-weight: bold;
                color:black;
                text-decoration: none;
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
            <div class="description">
                <div class="dhead">
                    Lecturer: <input type="text" value="${requestScope.lecturer.name}"/>
                    <form action="timeTable" method="POST">
                        <input type="hidden" name="leid" value="${requestScope.leid}"/>
                        <input type="hidden" name="email" value="${requestScope.email}"/>
                        From: <input type="date" name="from" value="${requestScope.from}"/>
                        To: <input type="date" name="to" value="${requestScope.to}"/>
                        <input type="submit" value="View"/> 
                    </form>
                </div>
            </div>
            <div class="table">
                <table>
                    <tr class="htable">
                        <td></td>
                        <c:forEach items="${requestScope.dates}" var="d">
                            <td>${DateTimeHelper.getDayNameofWeek(d)}<br>${d}</td>
                            </c:forEach>
                    </tr>
                    <c:forEach items="${requestScope.slots}" var="slot">
                        <tr>
                            <td class="timeslot"><a class="tname">${slot.name}: </a><br><a class="tdes">(${slot.description})</a></td>
                            <c:forEach items="${requestScope.dates}" var="d">
                                <td>
                                    <c:forEach items="${requestScope.sessions}" var="ses">
                                        <c:if test="${DateTimeHelper.compare(ses.date,d) eq 0 and (ses.timeslot.id eq slot.id)}">
                                            <a href="takeAttendance?seid=${ses.id}">${ses.group.name}-${ses.group.subject.name}</a>
                                            <br/>
                                            at ${ses.room.name}
                                            <c:if test="${ses.attendated}">
                                                <a class="attended">(Attend)</a>
                                            </c:if>
                                            <c:if test="${!ses.attendated}">
                                                <a class="not_yet">(Not Yet)</a>
                                            </c:if>
                                        </c:if>

                                    </c:forEach>
                                </td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <div class="last">
                <b>For any comments or questions, please contact:</b> Student Service Department : Email: <a href="mailto:dichvusinhvien@fe.edu.vn">dichvusinhvien@fe.edu.vn</a> . Phone: <b>(024)7308.13.13</b><br>
                Powered by <a href="">FPT University</a> |  <a href="">CMS</a> |  <a href="">library</a> |  <a href="">books24x7</a>
            </div>
        </div>
    </body>
</html>