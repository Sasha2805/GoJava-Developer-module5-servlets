<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.company.model.entities.Company" %>

<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <title>Project companies</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
    <script src="${pageContext.request.contextPath}/js/view.js"></script>
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
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="company" items="${companies}">
                        <tr>
                            <td><c:out value="${company.id}"/></td>
                            <td><c:out value="${company.name}"/></td>
                            <td><c:out value="${company.info}"/></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="block block-form">
            <div class="block-action" onclick="openBlock('add-company')">
                <span class="action-description">Add company</span>
            </div>

            <div class="form-container" id="add-company" style="display:none; float: left">
                <div class="form">
                    <form action="${pageContext.request.contextPath}/project-companies?${pageContext.request.getQueryString()}" method="POST">
                        <div class="form-group">
                            <label for="companyName">Company name</label>
                            <input type="text" class="form-control" name="companyName" placeholder="Company name">
                        </div>
                        <div class="form-group">
                            <label for="companyInfo">Company info</label>
                            <textarea class="form-control" name="companyInfo" rows="3"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Execute</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>