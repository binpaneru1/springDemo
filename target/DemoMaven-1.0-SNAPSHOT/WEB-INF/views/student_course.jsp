<%-- 
    Document   : student_course
    Created on : Sep 14, 2016, 3:08:40 PM
    Author     : vabz grg
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add Course To Student</h1>
        <form action="${pageContext.request.contextPath}/addcoursestudent" method="POST">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
            Name of the student : <input type="text" name="fname" value="${sid}">
            Course : <select name="cid" >
                <c:forEach var="course" items="${course}">
                    <option value="${course.cid}">${course.title}</option>
                </c:forEach>
            </select>
            <input type ="submit" name="submit" value="Submit">
            
        </form>
        
    </body>
</html>
