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
        <!-- link Style.css -->
        <link rel="stylesheet" href="assets/css/myStyle/Style.css">
        <!--link font-awesome-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
        <style>
            .content{
                display: flex;
                padding: 10px;
                justify-content: center;
            }
            .content h3{
                text-align: center;
            }
            .left-content{
                background-color: whitesmoke;
                margin: 10px;
                border-radius: 8px;
                padding: 10px;
            }
            .right-content{
                background-color: whitesmoke;
                margin: 10px;
                border-radius: 8px;
                padding: 10px;
            }
            .partName{
                width: 40%;
                margin: -23px auto 23px auto;
                border-radius: 9px;
                color: white;
            }
            .part1{
                background-image: linear-gradient(#08a1fa,#104790)
            }
            .part2{
                background-image: linear-gradient(#feb52a,#f08e01)
            }
            .mybtn{
                padding: 2px;
                border-radius: 5px;
                background-color: orange;
                text-decoration: none;
                color: white;
            }
            .mybtn:hover{
                background-color: lightsalmon;
                color: white;
            }
            table{
                table-layout: fixed;
                width: 100%;
                margin-top: 5px;
                border-collapse: collapse;
                color: black;
            }
            table td{
                border: 1px solid #ccc;
                text-align: center;
            }
            .ltable{
                text-align: left;
            }
            .ihead{
                background-color: #3366cc;
                margin-top: 5px;
                color: white;
                padding: 5px;
                font-size: 18px;
            }

            .small-part{
                border-radius: 6px;
                border: 1px solid #ccc;
                padding: 5px;
                margin: 5px auto;
                background-color: white;

            }
            .small-part h3{
                font-size: 18px;
            }
            .detail-small-part a{
                text-decoration: none;
            }
            .detail-small-part a:hover{
                text-decoration: underline;
            }
            .item{
                border: 2px solid background;
                border-radius: 9px;
                padding: 10px;
            }
            .item:hover{
                border: 2px solid orangered;
                border-radius: 9px;
            }
            .main-content-home{
                margin: 40px auto;
                text-align: center;
                border: 1px solid #ccc;
                border-radius: 9px;
                padding: 20px 10px;
            }
            .main-content-home img{
                width: 100px;
                height: 100px;
                padding: 10px;
                border-radius: 9px;
            }
            .main-content-home a{
                text-decoration: none;
                color: orangered;
                font-family: cursive;
                font-size: 20px;
                font-weight: bold;
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
                    <a href="studentLogout">
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
            <div class="row content">
                <div class="left-content col-lg-4">
                    <h3 class="partName part1">News</h3>
                    News: <a class="mybtn" href="#">Click here</a>
                    <div class="news-table">
                        <table>
                            <tr >
                                <th style="background-color: green; color: white; font-size: 20px; text-align: center;" colspan="2">IMPORTANT  NOTICE</th>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr >
                                <td class="ihead" >Type of procedure</td>
                                <td class="ihead" >Deadline</td>
                            </tr>
                            <tr>
                                <td class="ltable">1. Changing major</td>
                                <td rowspan="2">4 weeks before the new semester</td>
                            </tr>
                            <tr>
                                <td class="ltable">2. Changing campus</td>
                            </tr>
                            <tr>
                                <td class="ltable">3. Rejoin</td>
                                <td>10 days before the new semester</td>
                            </tr>
                            <tr>
                                <td class="ltable">4. Suspend one semester</td>
                                <td rowspan="8">1 week before the new semester</td>
                            </tr>
                            <tr>
                                <td class="ltable">5. Suspend one semester to take repeated course</td>

                            </tr>
                            <tr>
                                <td class="ltable">6. Suspend subject</td>

                            </tr>
                            <tr>
                                <td class="ltable">7. Register to repeat a course</td>

                            </tr>
                            <tr>
                                <td class="ltable">8. Register extra courses </td>

                            </tr>
                            <tr>
                                <td class="ltable">9. Register to improve mark</td>

                            </tr>
                            <tr>
                                <td class="ltable">10. Move out class </td>

                            </tr>
                            <tr>
                                <td class="ltable">11. Request a drop out</td>

                            </tr>
                            <tr>
                                <td class="ltable">12. Retake to improve mark</td>
                                <td >12 hours before the final exam resit </td>
                            </tr>
                            <tr>
                                <td class="ltable">13. Re - Examination</td>
                                <td>1 week after the  examination result public </td>
                            </tr>
                            <tr>
                                <td class="ltable">14. Free of attendance</td>
                                <td>2 weeks after starting the new semester</td>
                            </tr>
                            <tr>
                                <td class="ltable">15. Pay specialized tuition</td>
                                <td>7 working days before the new semester</td>
                            </tr>
                            <tr>
                                <td class="ltable">16. Pay preparetation English tuition</td>
                                <td>3 working days before the new course</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="right-content col-lg-7">
                    <h3 class="partName part2">Academic Information</h3>
                    <div class="container main-content-home">
                        <div class="row">
                            <div class="col-md-6 items">
                                <div class="item">
                                    <a href="#">
                                        <i class="fas fa-paste" style="font-size: 100px; color: orangered;"></i><br>
                                    </a>
                                    <a href="#">View Report Attendance</a>
                                </div>
                            </div>
                            <div class="col-md-6 items">
                                <div class="item">
                                    <a href="#">
                                        <i class="fas fa-table" style="font-size: 100px; color: orangered;"></i><br>
                                    </a>
                                    <a href="#">Timetable</a>
                                </div>
                            </div>
                        </div>
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