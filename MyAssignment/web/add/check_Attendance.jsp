<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Take Attendance</title>
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
                margin-left: 10px;
                color:white;
                background-color: #5cb85c;
                border-radius: 3px;
                padding: 0 3px;
                font-size: 75%;
            }
            .table{
                height: 100%;
                display: flex;
                align-items: center;
                justify-content: center;
                margin-top: 10px;
            }
            table tr td {
                border:1px solid background;
                padding: 0 15px;
            }

            .table .htable{
                background-color: #6b90da;
                text-align: center;
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
            .avt_img img{
                width: 150px;
                height: auto;
            }

            .add_button{
                width: 50px;
                margin: 0 auto;
            }
            .add_button input{
                border-radius: 7px;
                background-color: #6b90da;
                color: white;
                border: 1px solid white;
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
            <h1>Single Activity Attendance</h1>
            <p>Attendance for <b>Subject</b> with lecturer <b>Lecturer</b> at slot x on yyyy/mm/dd, semester-year in room <b>room name</b> at FU-HL</p>
            <form>
                <div class="table">
                    <table>
                        <tr class="htable">
                            <td></td>
                            <td>GROUP</td>
                            <td>ROLLNUMBER</td>
                            <td>FULL NAME</td>
                            <td>ABSENT</td>
                            <td>PRESENT</td>
                            <td>COMMENT</td>
                            <td>
                                <input type="checkbox" name="show_image"/>SHOW IMAGE
                            </td>
                        </tr>
                        <tr>
                                <td>1</td>
                                <td>SE1943</td>
                                <td>1</td>
                                <td>Nguyen Van A</td>
                                <td>
                                    <input type="radio" name="checkAttendance1" checked="true"> 
                                    Absent
                                </td>
                                <td>
                                    <input type="radio" name="checkAttendance1" > 
                                    Present
                                </td>
                                <td></td>
                                <td class="avt_img">
                                    <img src="img/avt.jpeg" alt="alt"/>
                                </td>

                        </tr>
                        <tr>
                                <td>2</td>
                                <td>SE1943</td>
                                <td>2</td>
                                <td>Nguyen Thi B</td>
                                <td>
                                    <input type="radio" name="checkAttendance2" checked="true"> 
                                    Absent
                                </td>
                                <td>
                                    <input type="radio" name="checkAttendance2" > 
                                    Present
                                </td>
                                <td></td>
                                <td class="avt_img">
                                    <img src="img/avt.jpeg" alt="alt"/>
                                </td>

                        </tr>

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
</html>