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
                            ?
                        </span>
                    </a>
                    <a href="#">
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
            <p>Attendance for <b>PRF192</b> with lecturer <b>SONNT5</b> at slot 3 on Wednessday 12/10/2022, Spring22 in room <b>BE-301</b> at FU-HL</p>
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
                        <td>HE190001</td>
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
                        <td>HE190002</td>
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
                    <tr>
                        <td>3</td>
                        <td>SE1943</td>
                        <td>HE190003</td>
                        <td>Nguyen Van C</td>
                        <td>
                            <input type="radio" name="checkAttendance3" checked="true"> 
                            Absent
                        </td>
                        <td>
                            <input type="radio" name="checkAttendance3" > 
                            Present
                        </td>
                        <td></td>
                        <td class="avt_img">
                            <img src="img/avt.jpeg" alt="alt"/>
                        </td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>SE1943</td>
                        <td>HE190004</td>
                        <td>Nguyen Thi D</td>
                        <td>
                            <input type="radio" name="checkAttendance4" checked="true"> 
                            Absent
                        </td>
                        <td>
                            <input type="radio" name="checkAttendance4" > 
                            Present
                        </td>
                        <td></td>
                        <td class="avt_img">
                            <img src="img/avt.jpeg" alt="alt"/>
                        </td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>SE1943</td>
                        <td>HE190005</td>
                        <td>Nguyen Van E</td>
                        <td>
                            <input type="radio" name="checkAttendance5" checked="true"> 
                            Absent
                        </td>
                        <td>
                            <input type="radio" name="checkAttendance5" > 
                            Present
                        </td>
                        <td></td>
                        <td class="avt_img">
                            <img src="img/avt.jpeg" alt="alt"/>
                        </td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>SE1943</td>
                        <td>HE190006</td>
                        <td>Nguyen Thi F</td>
                        <td>
                            <input type="radio" name="checkAttendance6" checked="true"> 
                            Absent
                        </td>
                        <td>
                            <input type="radio" name="checkAttendance6" > 
                            Present
                        </td>
                        <td></td>
                        <td class="avt_img">
                            <img src="img/avt.jpeg" alt="alt"/>
                        </td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td>SE1943</td>
                        <td>HE190007</td>
                        <td>Nguyen Van G</td>
                        <td>
                            <input type="radio" name="checkAttendance7" checked="true"> 
                            Absent
                        </td>
                        <td>
                            <input type="radio" name="checkAttendance7" > 
                            Present
                        </td>
                        <td></td>
                        <td class="avt_img">
                            <img src="img/avt.jpeg" alt="alt"/>
                        </td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td>SE1943</td>
                        <td>HE190007</td>
                        <td>Nguyen Thi H</td>
                        <td>
                            <input type="radio" name="checkAttendance8" checked="true"> 
                            Absent
                        </td>
                        <td>
                            <input type="radio" name="checkAttendance8" > 
                            Present
                        </td>
                        <td></td>
                        <td class="avt_img">
                            <img src="img/avt.jpeg" alt="alt"/>
                        </td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td>SE1943</td>
                        <td>HE190009</td>
                        <td>Nguyen Van I</td>
                        <td>
                            <input type="radio" name="checkAttendance9" checked="true"> 
                            Absent
                        </td>
                        <td>
                            <input type="radio" name="checkAttendance9" > 
                            Present
                        </td>
                        <td></td>
                        <td class="avt_img">
                            <img src="img/avt.jpeg" alt="alt"/>
                        </td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td>SE1943</td>
                        <td>HE190010</td>
                        <td>Nguyen Thi K</td>
                        <td>
                            <input type="radio" name="checkAttendance10" checked="true"> 
                            Absent
                        </td>
                        <td>
                            <input type="radio" name="checkAttendance10" > 
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