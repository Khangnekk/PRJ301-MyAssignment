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
            .input-info{
                text-align: center;
                width: 40%;
                margin: 10px auto;
            }
            .input-info select option{
                text-align: center;
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
            <form method="POST" action="check_Attendance">
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
                                           name="present${a.student.id}" value="present" /></td>
                                <td><input type="radio"
                                           <c:if test="${!a.present}">
                                               checked="checked"
                                           </c:if>
                                           name="present${a.student.id}" value="absent" /></td>
                                <td><input type="text" name="description${a.student.id}" value="${a.description}" /></td>
                                <td class="avt_img">
                                    <img src="img/avt.jpeg" alt="alt"/>
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