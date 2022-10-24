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
                overflow: scroll;
                font-size: 14px
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
                                        <a href="group?gid=${g.id}">
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
                                <td>GROUP NAME</td>
                                <td>01</td>
                                <td>02</td>
                                <td>03</td>
                                <td>04</td>
                                <td>05</td>
                                <td>06</td>
                                <td>07</td>
                                <td>08</td>
                                <td>09</td>
                                <td>10</td>
                                <td>11</td>
                                <td>12</td>
                                <td>13</td>
                                <td>14</td>
                                <td>15</td>
                                <td>16</td>
                                <td>17</td>
                                <td>18</td>
                                <td>19</td>
                                <td>20</td>
                                <td>21</td>
                                <td>22</td>
                                <td>23</td>
                                <td>24</td>
                                <td>25</td>
                                <td>26</td>
                                <td>27</td>
                                <td>28</td>
                                <td>29</td>
                                <td>30</td>
                                <td>Absent(%)</td>
                            </tr>                           
                            <tr>
                                <td>Nguyen Luong Khang</td>
                                <td>SE1643</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>0%</td>
                            </tr>
                            <tr>
                                <td>Nguyen Van A</td>
                                <td>SE1643</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>21%</td>
                            </tr>
                            <tr>
                                <td>Nguyen Thi C</td>
                                <td>SE1643</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>v</td>
                                <td>8%</td>
                            </tr>
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