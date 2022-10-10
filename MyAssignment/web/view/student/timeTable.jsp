<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Schedule Of Student</title>
    <!-- link favicon logo -->
    <link rel="icon" href="#" />
    <!-- link bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- link font-awesome -->
    <link rel="stylesheet" href="./assets/font/fontawesome-free-6.1.2-web/css/all.min.css">
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
            padding: 2px;
            font-size: 75%;
        }
        .table{
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .table .htable{
            background-color: #6b90da;
        }

        .last{
            text-align: center;
            font-size: 14px;
        }
        .dhead{
            margin-top: 40px;
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
                <a href="#">Home</a>
                <a>| <b>View Schedule</b></a>
            </div>
            <div class="topRight">
                <a href="#">
                    <span>
                        Khangnlhe161660
                    </span>
                </a>
                <a href="#">
                    <span>
                        logout
                    </span>
                </a>
                <a href="#">
                    <span>
                        Campus: ..
                    </span>
                </a>
            </div>
        </div>
        <div class="description">
            <div class="dhead">
             <h2> Activities for KhangNLHE161660 (Nguyen Luong Khang)</h2>
         </div>
         <div>
            <p><b>Note</b>: These activities do not include extra-curriculum activities, such as club activities ...</p>
            <p> Rooms starting with AL : Alpha building<br>
                Rooms starting with BE : Beta building<br>
                Rooms starting with GA : Gammar building<br>
                Rooms starting with R : Vovinam<br>
                Rooms starting with DE : Delta building<br>
            Little UK (LUK) :  on the 5th floor of Delta building</p>
        </div>
    </div>
    <div class="table">
        <table border="1px">
            <tr class="htable">
                <td>Year:
                    <select>
                        <option>2019</option>
                        <option>2020</option>
                        <option>2021</option>
                        <option>2022</option>
                        <option>2023</option>
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
                        <option>datefromto</option>
                        <option>datefromto</option>
                        <option>datefromto</option>
                        <option>datefromto</option>
                        <option>datefromto</option>
                    </select>
                </td>

                <td>date</td>
                <td>date</td>
                <td>date</td>
                <td>date</td>
                <td>date</td>
                <td>date</td>
                <td>date</td>
            </tr>
            <tr>
                <td>Slot 1</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
            </tr>
            <tr>
                <td>Slot 2</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
            </tr>
            <tr>
                <td>Slot 3</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
            </tr>
            <tr>
                <td>Slot 4</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
            </tr>
            <tr>
                <td>Slot 5</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
            </tr>
            <tr>
                <td>Slot 6</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
            </tr>
            <tr>
                <td>Slot 7</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
            </tr>
            <tr>
                <td>Slot 8</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
                <td>----------------</td>
            </tr>
        </table>
    </div>
    <div class="note">
        <p><b>More note:</b></p>
        <ul>
            <li><a style="color: green;">(attended):</a> KhangNLHE161660 had attended this activity </li>
            <li><a style="color: red;">(absent):</a> KhangNLHE161660 had NOT attended this activity </li>
            <li>(-): no data was given </li>
        </ul>
    </div>
    <div class="last">
        <b>For any comments or questions, please contact:</b> Student Service Department : Email: <a href="mailto:dichvusinhvien@fe.edu.vn">dichvusinhvien@fe.edu.vn</a> . Phone: (024)7308.13.13<<br>>
        Powered by <a href="">FPT University</a> |  <a href="">CMS</a> |  <a href="">library</a> |  <a href="">books24x7</a>
    </div>
</div>
</body>
</html>