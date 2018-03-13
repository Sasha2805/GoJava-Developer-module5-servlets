<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.company.model.entities.Project" %>

<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <title>All projects</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
        integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>

<body>
<div class="wrapper">
    <div class="container">
        <h4>List of all projects</h4>
        <div class="table-container">
            <table border="1">
                <tr>
                    <td>Id</td>
                    <td>Name</td>
                    <td>Info</td>
                    <td>Cost</td>
                </tr>
                <c:forEach var="project" items="${projects}">
                <tr>
                    <td><c:out value="${project.id}"/></td>
                    <td><c:out value="${project.name}"/></td>
                    <td><c:out value="${project.info}"/></td>
                    <td><c:out value="${project.cost}"/></td>
                </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>