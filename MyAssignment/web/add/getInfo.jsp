<%-- 
    Document   : getInfo
    Created on : Oct 27, 2022, 8:33:30 PM
    Author     : Khangnekk
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .gcontent ul li{
                list-style: square;
            }
            .gcontent a{
                text-decoration: none;
            }
            .gcontent a:hover{
                color: #feb52a;
            }
        </style>
    </head>
    <body>
        <form action="getInfo?gid=-1">
            <div class="input-info">
                <select name="gid" >
                    <option id="groupid" value="${sessionScope.group.id}">-- Select Group --</option>
                    <c:forEach items="${sessionScope.groups}" var="g">                            
                        <option "
                                <c:if test="${sessionScope.group.id eq g.id}">
                                    selected="selected"
                                </c:if>
                                value="${g.id}">
                            ${g.name}
                        </option>
                    </c:forEach>
                </select>
                <select id="gid_element" name="seid">
                    <option value="${sessionScope.group.id}">-- Select slot --</option>
                    <c:forEach items="${sessionScope.sessionsByGidAndLeid}" var="SBI">
                        <option value="${SBI.id}" <c:if test="${SBI.id eq seid}">
                                selected="selected"
                            </c:if>>
                            Slot ${SBI.index}                        
                        </option>
                    </c:forEach>
                </select>
                <input type="hidden" value="${sessionScope.email}" name="email">
                <input id="submit" type="submit" value="Search group">
            </div>
        </form>
        <div>
            <form action="getInfo" method="post">
                <input type="hidden" value="${requestScope.emailInfo}" name="emailInfo">
                <input type="hidden" value="${requestScope.gidInfo}" name="gidInfo">
                <input type="hidden" value="${requestScope.seInfo}" name="seidInfo">
                <input id="submit" type="submit" value="Take Attendance">
            </form>
        </div>
    </body>
    <script>
        var x1 = document.getElementById("groupid").value;
        if (x1 <= 0) {
            document.getElementById("gid_element").style.display = 'none';
        } else {
            document.getElementById("gid_element").style.display = 'block';
        }
    </script>
</html>
