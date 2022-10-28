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
                display: flex;
                /*grid-template-columns: 15% 84%;*/
                margin: 10px auto;
                justify-content: space-between;

            }
            .group{
                /*border: 1px solid red;*/
                /*border-radius: 8px;*/
                text-align: center;
                margin: 10px auto;
                /*                padding: 10px;
                                height: 80vh;*/
            }

            .group-details{
                display: block;
                text-align: center;
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
                margin: 5px auto;
            }
            .fullname{
                text-align: left;
                padding: 0 10px;
            }

            .load{
                width: 100%;
                height: 100%;
                opacity: 0.88;
                background: #ffff;
                position: fixed;
                top: 0;
                left: 0;
                z-index: 100000000000000000;
                overflow: hidden;
            }
            .load img{
                width: 150px;
                position: absolute;
                height: 150px;
                top: 50%;
                left: 50%;
                margin-top: -75px;
                margin-left: -76px;
            }
        </style>
    </head>
    <body class="preloading">
        <!--        <div class="load">
                    <img src="img/loading.gif">
                </div> -->
        <!--        <div class="loader">
                    <span class="fas fa-spinner xoay icon"></span>
                </div>-->
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
                        <div class="load" style="display: none">
                            <img src="img/loading.gif">
                        </div> 
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

                                    <c:forEach items="${requestScope.sessionsByGidAndLeid}" var="sesByGAL">
                                        <td>
                                            <c:forEach items="${requestScope.attendances}" var="att">
                                                <c:if test="${(att.student.id eq stu.id) and (att.session.id  eq sesByGAL.id)}">
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
    <script>
        function loading(){
            document.getElementsByClassName("load").style.display = 'block';
        }
    </script>
</html>