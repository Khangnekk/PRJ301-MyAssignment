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
    <link rel="stylesheet" href="assets/css/bootstrap/bootstrap.min.css"/>
    <!-- link Style.css -->
    <link rel="stylesheet" href="assets/css/myStyle/Style.css">
    <style>
        .welcome{
            margin: 20px;
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
            <div class="welcome">
                <h2>Hello, ${sessionScope.account.username}</h2>
                <p>Nice to see you back</p>
            </div>

            <div class="main-content">
                <div>
                    <h3 class="partName">Section for lecturer</h3>
                </div>
                <div>
                    <a href="timeTable?email=${sessionScope.account.email}">Timetable</a><br>
                    <a href="getInfo?emailInfo=${sessionScope.account.email}&gidInfo=-1&seInfo=-1&gid=-1&seid=-1&email=${sessionScope.account.email}">Take Attendance</a><br>
                    <a href="group?email=${sessionScope.account.email}&gid=-1">View Report Attendance</a>
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