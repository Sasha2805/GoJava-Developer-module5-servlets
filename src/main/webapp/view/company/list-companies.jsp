<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.company.model.entities.Company" %>

<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <title>All companies</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
        integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>

<body>
<div class="wrapper">
    <div class="container">
        <div class="block block-table">
            <h4>List of all companies</h4>
            <div class="table-container">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Name</th>
                            <th scope="col">Info</th>
                            <th scope="col">Projects</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="company" items="${companies}">
                        <tr>
                            <td><c:out value="${company.id}"/></td>
                            <td><c:out value="${company.name}"/></td>
                            <td><c:out value="${company.info}"/></td>
                            <td><a href="/MyWebApp/company-projects?companyId=${company.id}">view</a></td>
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