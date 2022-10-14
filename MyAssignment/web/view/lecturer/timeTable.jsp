<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Schedule Of Lecturer</title>
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
            }
            table tr td {
                padding:0 10px;
                /*border:1px solid background;*/
                border-bottom: 1px solid #f0f0f0;
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
            .attended:hover {
                color: green;
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
            <div class="description">
                <div class="dhead">
                    <form action="">
                        Campus: 
                        <select>
                            <option>FU-HL</option>
                            <option>FU-HL</option>
                            <option>FU-HL</option>
                            <option>FU-HL</option>
                        </select><br>
                        Lecturer: 
                        <input type="text" name="lecturer">
                        <input type="submit" name="view" value="View">
                    </form>
                </div>
            </div>
            <div class="table">
                <table style="border:1px solid white;">
                    <tr class="htable">
                        <td>Year:
                            <select>
                                <option>2022</option>
                                <option>2023</option>
                                <option>2024</option>
                                <option>2025</option>
                            </select>
                        </td>

                        <td>MON</td>
                        <td>TUE</td>
                        <td>WED</td>
                        <td>THU</td>
                        <td>FRI</td>
                        <td>SAT</td>
                        <td>SUN</td>
                    </tr>
                    <tr class="htable">
                        <td>Week:
                            <select>
                                <option>10/10 - 16/10</option>
                                <option>17/10 - 23/10</option>
                                <option>24/10 - 30/10</option>
                                <option>31/10 - 6/11</option>
                                <option>7/11 - 13/11</option>
                            </select>
                        </td>

                        <td>10/10</td>
                        <td>11/10</td>
                        <td>12/10</td>
                        <td>13/10</td>
                        <td>14/10</td>
                        <td>15/10</td>
                        <td>16/10</td>
                    </tr>
                    <tr>
                        <td>Slot 0</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>Slot 1</td>
                        <td>
                            <a href="" class="info">IOT1702-PRF192</a><br>
                            <a href="" class="info">at BE-301</a><br>
                            <a href="" class="attended">(Attended)</a>
                            <button>
                                <a>Edunext</a>
                            </button>
                        </td>
                        <td>
                            -
                        </td>
                        <td>
                            <a href="" class="info">IOT1702-PRF192</a><br>
                            <a href="" class="info">at BE-301</a><br>
                            <a href="" class="attended">(Attended)</a>
                            <button>
                                <a>Edunext</a>
                            </button>
                        </td>
                        <td>
                            <a href="" class="info">IOT1702-PRF192</a><br>
                            <a href="" class="info">at BE-301</a><br>
                            <a href="" class="not_yet">(Not yet)</a>
                            <button>
                                <a>Edunext</a>
                            </button>
                        </td>
                        <td>
                            <a href="" class="info">IOT1702-PRF192</a><br>
                            <a href="" class="info">at BE-301</a><br>
                            <a href="" class="not_yet">(Not yet)</a>
                            <button>
                                <a>Edunext</a>
                            </button>
                        </td>
                        <td>
                            -
                        </td>
                        <td>
                            -
                        </td>
                    </tr>
                    <tr>
                        <td>Slot 2</td>
                        <td>
                            <a href="" class="info">AI1604 - DBI202</a><br>
                            <a href="" class="info">at BE-315</a><br>
                            <a href="" class="attended">(Attended)</a>
                            <button>
                                <a>Edunext</a>
                            </button>
                        </td>
                        <td>
                            <a href="" class="info">SE1610-PRJ301</a><br>
                            <a href="" class="info">at DE-222</a><br>
                            <a href="" class="attended">(Attended)</a>
                            <button>
                                <a>Edunext</a>
                            </button>
                        </td>
                        <td>
                            <a href="" class="info">SE1608-PRJ301</a><br>
                            <a href="" class="info">at DE-223</a><br>
                            <a href="" class="attended">(Attended)</a>
                            <button>
                                <a>Edunext</a>
                            </button>
                        </td>
                        <td>
                            <a href="" class="info">IOT1702-PRF192</a><br>
                            <a href="" class="info">at BE-301</a><br>
                            <a href="" class="not_yet">(Not yet)</a>
                            <button>
                                <a>Edunext</a>
                            </button>
                        </td>
                        <td>
                            <a href="" class="info">IOT1702-PRF192</a><br>
                            <a href="" class="info">at BE-301</a><br>
                            <a href="" class="not_yet">(Not yet)</a>
                            <button>
                                <a>Edunext</a>
                            </button>
                        </td>
                        <td>
                            -
                        </td>
                        <td>
                            -  
                        </td>
                    </tr>
                    <tr>
                        <td>Slot 3</td>
                        <td>
                            <a href="" class="info">IOT1702-PRF192</a><br>
                            <a href="" class="info">at BE-301</a><br>
                            <a href="" class="attended">(Attended)</a>
                            <button>
                                <a>Edunext</a>
                            </button>
                        </td>
                        <td>
                            <a href="" class="info">IOT1702-PRF192</a><br>
                            <a href="" class="info">at BE-301</a><br>
                            <a href="" class="attended">(Attended)</a>
                            <button>
                                <a>Edunext</a>
                            </button>
                        </td>
                        <td>
                            <a href="" class="info">IOT1702-PRF192</a><br>
                            <a href="" class="info">at BE-301</a><br>
                            <a href="" class="not_yet">(Not yet)</a>
                            <button>
                                <a>Edunext</a>
                            </button>
                        </td>
                        <td>
                            <a href="" class="info">IOT1702-PRF192</a><br>
                            <a href="" class="info">at BE-301</a><br>
                            <a href="" class="not_yet">(Not yet)</a>
                            <button>
                                <a>Edunext</a>
                            </button>
                        </td>
                        <td>
                            <a href="" class="info">IOT1702-PRF192</a><br>
                            <a href="" class="info">at BE-301</a><br>
                            <a href="" class="not_yet">(Not yet)</a>
                            <button>
                                <a>Edunext</a>
                            </button>
                        </td>
                        <td>
                            -
                        </td>
                        <td>
                            -  
                        </td>
                    </tr>
                    <tr>
                        <td>Slot 4</td>
                        <td>
                            <a href="" class="info">IOT1702-PRF192</a><br>
                            <a href="" class="info">at BE-301</a><br>
                            <a href="" class="attended">(Attended)</a>
                            <button>
                                <a>Edunext</a>
                            </button>
                        </td>
                        <td>
                            <a href="" class="info">IOT1702-PRF192</a><br>
                            <a href="" class="info">at BE-301</a><br>
                            <a href="" class="attended">(Attended)</a>
                            <button>
                                <a>Edunext</a>
                            </button>
                        </td>
                        <td>
                            <a href="" class="info">IOT1702-PRF192</a><br>
                            <a href="" class="info">at BE-301</a><br>
                            <a href="" class="not_yet">(Not yet)</a>
                            <button>
                                <a>Edunext</a>
                            </button>
                        </td>
                        <td>
                            <a href="" class="info">IOT1702-PRF192</a><br>
                            <a href="" class="info">at BE-301</a><br>
                            <a href="" class="not_yet">(Not yet)</a>
                            <button>
                                <a>Edunext</a>
                            </button>
                        </td>
                        <td>
                            <a href="" class="info">IOT1702-PRF192</a><br>
                            <a href="" class="info">at BE-301</a><br>
                            <a href="" class="not_yet">(Not yet)</a>
                            <button>
                                <a>Edunext</a>
                            </button>
                        </td>
                        <td>
                            -
                        </td>
                    </tr>
                    <tr>
                        <td>Slot 5</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>Slot 6</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>Slot 7</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>Slot 8</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                    </tr>
                </table>
            </div>
            <div class="last">
                <b>For any comments or questions, please contact:</b> Student Service Department : Email: <a href="mailto:dichvusinhvien@fe.edu.vn">dichvusinhvien@fe.edu.vn</a> . Phone: <b>(024)7308.13.13</b><br>
                Powered by <a href="">FPT University</a> |  <a href="">CMS</a> |  <a href="">library</a> |  <a href="">books24x7</a>
            </div>
        </div>
    </body>
</html>