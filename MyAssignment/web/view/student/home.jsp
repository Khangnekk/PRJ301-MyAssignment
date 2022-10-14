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
            justify-content: right;
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
        .last{
            text-align: center;
            font-size: 14px;
            padding-bottom: 20px;
        }
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
        .acaInfo{

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
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>FPT University Academic Portal</h1>
        </header>
        <div class="top">
            <div class="topLeft">

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
                <div class="acaInfo">
                    <div class="covid">
                        <input type="text" id="linkYoutube" name="linkYoutube" placeholder="URL of the test-covid process video uploaded to Youtube" style="width: 100%; border-radius: 6px; border:1px solid lightblue; padding: 5px;">

                        <p id="content" style="color: red; font-weight: bold; display: none;"></p>
                        LUK students register online by following the link below:
                        <a href="https://bit.ly/K17P5HN-HocOnline" target="blank"style="font-size: 14px;">
                            https://bit.ly/K17P5HN-HocOnline
                        </a><br>         
                        <input type="radio" id="checkLink" name="link" onclick="checkLink()" />Update status F0 (Valid for 7 days from the time of registration)
                        <input type="submit" id="send"value="Send" style="border-radius: 50px; text-align: center; display: none;">
                    </div>
                    <div class="mainRight">
                        <div class="container">
                            <div class="row rightContent">
                                <div class="small-part col-lg-6">
                                    <h3>Registration/Application</h3>
                                    <div class="detail-small-part">
                                        <ul>
                                            <li>
                                                <a href="">Suspend one semester to take repeated course </a>
                                                &nbsp;|&nbsp;
                                                <a href="">Cancel</a>
                                            </li>
                                            <li>
                                                <a href="">Suspend one semester </a>
                                                &nbsp;|&nbsp; 
                                                <a href="">Cancel</a>
                                            </li>
                                            <li>
                                                <a href="">Move out class</a>
                                            </li>
                                            <li>
                                                <a href="">Register extra courses</a>
                                            </li>
                                            <li>
                                                <a href="">Register to improve mark</a>
                                            </li>
                                            <li>
                                                <a href="">Register to repeat a course</a>
                                            </li>
                                            <li>
                                                <a href="">Cancel registration (</a>
                                            </li>
                                            <li>
                                                <a href="">Register Free Elective Courses</a>
                                            </li>
                                            <li>
                                                <a href="">Send Application</a>
                                                &nbsp;|&nbsp; 
                                                <a href="">View Application </a>
                                            </li>
                                            <li>
                                                <a href="">Student confirmation</a>
                                            </li>
                                            <li>
                                                <a href="">Choose paid items</a>
                                                &nbsp;-&nbsp; 
                                                <a href="">View</a>
                                            </li>
                                            <li>
                                                <a href="">Request to change classes with students</a>
                                            </li>
                                        </ul>
                                    </div>                                 
                                </div>
                                <div class="small-part col-lg-5">
                                    <h3>Information Access</h3>     
                                    <div class="detail-small-part">
                                        <ul>
                                            <li>
                                                <a href="">University timetable</a>
                                            </li>
                                            <li>
                                                <a href="">Tuition fee per course</a>
                                            </li>
                                            <li>
                                                <a href="timeTable.jsp">Weekly timetable</a>
                                            </li>
                                            <li>
                                                <a href="">Blended Online Course (BLOC) Schedules</a>
                                            </li>
                                            <li>
                                                <a href="">Class timetable</a>
                                            </li>
                                            <li>
                                                <a href="">View exam schedule</a>
                                            </li>
                                            <li>
                                                <a href="">View Syllabuses</a>
                                            </li>
                                            <li>
                                                <a href="">EduNext student guideline</a>
                                            </li>
                                            <li>
                                                <a href="">Help</a>
                                            </li>
                                            <li>
                                                <a href="">Handbook: Student Orientation</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="small-part col-lg-6">
                                    <h3>Feedback</h3>
                                    <div class="detail-small-part">
                                        <ul>
                                            <li>
                                                <a href="">Feedback about teaching</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="small-part col-lg-5">
                                    <h3>Reports</h3>
                                    <div class="detail-small-part">
                                        <ul>
                                            <li>
                                                <a href="Attendance_report.jsp">Attendance report</a>
                                            </li>
                                            <li>
                                                <a href="">Mark Report</a>
                                            </li>
                                            <li>
                                                <a href="">Academic Transcript </a>
                                            </li>
                                            <li>
                                                <a href="">Curriculum</a>
                                            </li>
                                            <li>
                                                <a href="">Student Fee</a>
                                            </li>
                                            <li>
                                                <a href="">Transaction history</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="small-part col-lg-6">
                                    <h3>Others</h3>
                                    <div class="detail-small-part">
                                        <ul>
                                            <li>
                                                <a href="">Student Profile</a>
                                                &nbsp;|&nbsp;
                                                <a href="">Update Profile</a>
                                            </li>
                                            <li>
                                                <a href="">View semester</a>
                                                &nbsp;,&nbsp;
                                                <a href="">room</a>
                                            </li>
                                            <li>
                                                <a href="">Accreditation and credit transfer of online university modules (FUNiX)</a>
                                            </li>
                                            <li>
                                                <a href="">List of subjects waiting for class placement</a>
                                            </li>
                                            <li>
                                                <a href="">Types of Certificates</a>
                                            </li>
                                            <li>
                                                <a href="">Report: movement</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="small-part col-lg-5">
                                    <h3>Regulations</h3>
                                    <div class="detail-small-part">
                                        <ul>
                                            <li>
                                                <a href="">Regulations...</a>
                                            </li>
                                            <li>
                                                <a href="">Dormitory regulations</a>
                                            </li>
                                        </ul>   
                                    </div>
                                </div>
                                <div class="small-part col-lg-6">
                                    <h3>Courses on FPTU-Coursera</h3>
                                    <div class="detail-small-part">
                                        <li>
                                            <a href="">Announcement</a>
                                        </li>
                                        <li>
                                            <a href="">Ask mentor</a>
                                        </li>
                                        <li>
                                            <a href="">View answer</a>
                                        </li>
                                        <li>
                                            <a href="">Submit certificates</a>
                                        </li>
                                        <li>
                                            <a href="">Certificate submission guideline</a>
                                        </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="small-part col-lg-5">
                                    <h3>Dormitory Information</h3>
                                    <div class="detail-small-part">
                                        <ul>
                                            <li><a href="">Dormitory Information => Hoa Lac - On Campus Dormitory</a></li>
                                        </ul>
                                    </div>
                                </div>
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
    <script>
        function checkLink(){
            var check = document.getElementById("linkYoutube").value;
            const element = document.getElementById('content');
            const send = document.getElementById('send');
            if(check == ""){
                element.style.display = 'block'                
                element.innerHTML = "The video needs to have a full face image during the sampling process and subsequent steps";          
            }else{
                send.style.display = 'block'
            }
        }
    </script>
</body>
</html>