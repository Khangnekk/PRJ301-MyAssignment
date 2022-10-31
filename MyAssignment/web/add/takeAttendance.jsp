<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Take Attendance</title>
        <!-- link favicon logo -->
        <link rel="icon" href="assets/favicon/fu-favicon.jpg" />
        <!-- link bootstrap -->
        <link rel="stylesheet" href="assets/css/bootstrap/bootstrap.min.css"/>
        <!-- link Style.css -->
        <link rel="stylesheet" href="assets/css/myStyle/Style.css">
        <!--link font-awesome-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
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
                    <a href="#">
                        <span>
                            <c:if test="${sessionScope.account ne null}">
                                ${sessionScope.account.username}
                            </c:if>
                        </span>
                    </a>
                    <a href="logout">
                        <span>
                            logout
                        </span>
                    </a>
                    <a href="#">
                        <span>
                            Campus: FPTU - Hoa Lac
                        </span>
                    </a>
                </div>
            </div>
            <div>
                <h3>Take Attendance for ${requestScope.ses.group.name}</h3>
                Date: ${requestScope.ses.date}<br>
                Room: ${requestScope.ses.room.name}<br>
                Status Attendance: 
                <c:if test="${requestScope.ses.attendated}">
                    <a style="color:green; font-weight: bold">Attended</a>
                </c:if>
                <c:if test="${!requestScope.ses.attendated}">
                    <a style="color:red;font-weight: bold">Not yet</a>
                </c:if><br>

            </div>
            <form method="POST" action="takeAttendance">
                <input type="hidden" name="seid" value="${requestScope.seid}"/>
                <div class="table">
                    <table>
                        <tr class="htable">
                            <td></td>
                            <td>GROUP</td>
                            <td>ROLLNUMBER</td>
                            <td>FULL NAME</td>
                            <td>PRESENT</td>
                            <td>ABSENT</td>
                            <td>COMMENT</td>
                            <td>
                                <input type="checkbox" name="show_image"/>SHOW IMAGE
                            </td>
                        </tr>
                        <c:forEach items="${requestScope.ses.attendances}" var="a" varStatus="loop">
                            <tr style="border-bottom: 2px solid #ccc; text-align: center">
                                <td>${loop.index+1}</td>
                                <td>${requestScope.ses.group.name}
                                    <input type="hidden" name="stuid" value="${a.student.id}"/>
                                </td>
                                <td>${a.student.id}</td>
                                <td>${a.student.name}</td>
                                <td><input type="radio"
                                           <c:if test="${a.present}">
                                               checked="checked"
                                           </c:if>
                                           name="present${a.student.id}" value="present" /> present</td>
                                <td><input type="radio"
                                           <c:if test="${!a.present}">
                                               checked="checked"
                                           </c:if>
                                           name="present${a.student.id}" value="absent" /> absent</td>
                                <td><input type="text" name="description${a.student.id}" value="${a.description}" /></td>
                                <td class="avt_img">
                                    <img src="assets/img/avt.jpeg" alt="alt"/>
                                </td>
                            </tr>   

                        </c:forEach>                    
                    </table>
                </div>
                <div class="add_button">
                    <input type="submit" value="Add"/>
                </div>
            </form>
            <div class="last">
                <b>For any comments or questions, please contact:</b> Student Service Department : Email: <a href="mailto:dichvusinhvien@fe.edu.vn">dichvusinhvien@fe.edu.vn</a> . Phone: <b>(024)7308.13.13</b><br>
                Powered by <a href="">FPT University</a> |  <a href="">CMS</a> |  <a href="">library</a> |  <a href="">books24x7</a>
            </div>
        </div>
    </body>
    <script>
        var gid = document.getElementById("groupid").value;
        document.getElementById("submit").value = 'Search group';

        var gid_element = document.getElementById("gid_element");
        if (gid <= 0) {
            gid_element.style.display = 'none';
        } else {
            document.getElementById("submit").value = 'Search slot';
        }

    </script>
</html>