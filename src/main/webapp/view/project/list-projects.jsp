<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.company.model.entities.Project" %>

<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <title>All projects</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
        integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>

<body>
<div class="wrapper">
    <div class="container">
        <div class="block block-table">
            <h4>List of all projects</h4>
            <div class="table-container">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Name</th>
                            <th scope="col">Info</th>
                            <th scope="col">Cost</th>
                            <th scope="col">Developers</th>
                            <th scope="col">Companies</th>
                            <th scope="col">Customers</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="project" items="${projects}">
                        <tr>
                            <td><c:out value="${project.id}"/></td>
                            <td><c:out value="${project.name}"/></td>
                            <td><c:out value="${project.info}"/></td>
                            <td><c:out value="${project.cost}"/></td>
                            <td><a href="/MyWebApp/project-developers?projectId=${project.id}">view</a></td>
                            <td><a href="/MyWebApp/project-companies?projectId=${project.id}">view</a></td>
                            <td><a href="/MyWebApp/project-customers?projectId=${project.id}">view</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>