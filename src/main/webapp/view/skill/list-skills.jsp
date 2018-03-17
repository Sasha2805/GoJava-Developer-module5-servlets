<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.company.model.entities.Skill" %>

<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <title>All skills</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
        integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>

<body>
<div class="wrapper">
    <div class="container">
        <h4>List of all skills</h4>
        <div class="table-container">
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Skill</th>
                        <th scope="col">Skill level</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="skill" items="${skills}">
                    <tr>
                        <td><c:out value="${skill.id}"/></td>
                        <td><c:out value="${skill.skill}"/></td>
                        <td><c:out value="${skill.skillLevel}"/></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>