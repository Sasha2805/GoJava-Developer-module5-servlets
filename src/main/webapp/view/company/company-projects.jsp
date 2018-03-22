<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.company.model.entities.Project" %>

<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <title>Company projects</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
    <script src="${pageContext.request.contextPath}/js/view.js"></script>
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
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="project" items="${projects}">
                        <tr>
                            <td><c:out value="${project.id}"/></td>
                            <td><c:out value="${project.name}"/></td>
                            <td><c:out value="${project.info}"/></td>
                            <td><c:out value="${project.cost}"/></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="block block-form">
            <div class="block-action" onclick="openBlock('add-project')">
                 <span class="action-description">Add project</span>
            </div>

            <div class="form-container" id="add-project" style="display:none; float: left">
                <div class="form">
                    <form action="${pageContext.request.contextPath}/company-projects?${pageContext.request.getQueryString()}" method="POST">
                        <div class="form-group">
                            <label for="projectName">Name</label>
                            <input type="text" class="form-control" name="projectName" placeholder="Project name">
                        </div>
                        <div class="form-group">
                            <label for="projectInfo">Info</label>
                            <input type="text" class="form-control" name="projectInfo" placeholder="Project info">
                        </div>
                        <div class="form-group">
                            <label for="projectCost">Cost</label>
                            <input type="text" class="form-control" name="projectCost" placeholder="Project cost">
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