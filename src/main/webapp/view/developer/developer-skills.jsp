<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.company.model.entities.Developer" %>

<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <title>Developer skills</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
    <script src="${pageContext.request.contextPath}/js/view.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
        integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>

<body>
<div class="wrapper">
    <div class="container">
        <div class="block block-table">
            <h4>Developer skills</h4>
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

        <div class="block block-form">
            <div class="block-action" onclick="openBlock('add-skill')">
                <span class="action-description">Add skill</span>
            </div>

            <div class="form-container" id="add-skill" style="display:none; float: left">
                <div class="form">
                    <form action="${pageContext.request.contextPath}/developer-skills?${pageContext.request.getQueryString()}" method="POST">
                        <div class="form-group">
                            <label for="skillName">Skill</label>
                            <input type="text" class="form-control" name="skillName" placeholder="Skill name">
                        </div>
                        <div class="form-group">
                            <label for="skillLevel">Skill level</label>
                            <select class="form-control" name="skillLevel">
                                <option value="JUNIOR">Junior</option>
                                <option value="MIDDLE">Middle</option>
                                <option value="SENIOR">Senior</option>
                            </select>
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