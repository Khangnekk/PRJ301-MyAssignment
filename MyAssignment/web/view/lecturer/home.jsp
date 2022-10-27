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
                width: 50%;
                margin: 40px auto;
                text-align: center;
                border: 1px solid #ccc;
                border-radius: 9px;
                padding: 0 3% 5% 3%;
            }
            .main-content a{
                text-decoration: none;
            }
            .partName{
                width: 50%;
                text-align: center;
                margin: -18px auto 23px auto;
                padding: 3px;
                border-radius: 9px; 
                color: white;
                background-image: linear-gradient(#feb52a,#f08e01);
                font-size: 24px;
            }
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
                    <a href="group?email=${sessionScope.account.email}&gid=-1">Group</a><br>
                    <a href="timeTable?email=${sessionScope.account.email}">Timetable</a><br>
                    <a href="getInfo?emailInfo=${sessionScope.account.email}&gidInfo=-1&seInfo=-1&gid=-1&seid=-1&email=${sessionScope.account.email}">Check Attendance</a>
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