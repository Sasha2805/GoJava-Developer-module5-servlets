<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.company.model.entities.Developer" %>

<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <title>Skill developers</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
        integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>

<body>
<div class="wrapper">
    <div class="container">
        <div class="block block-table">
            <h4>List of all developers</h4>
            <div class="table-container">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">First name</th>
                            <th scope="col">Last name</th>
                            <th scope="col">Age</th>
                            <th scope="col">Gender</th>
                            <th scope="col">Salary</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="developer" items="${developers}">
                        <tr>
                            <td><c:out value="${developer.id}"/></td>
                            <td><c:out value="${developer.firstName}"/></td>
                            <td><c:out value="${developer.lastName}"/></td>
                            <td><c:out value="${developer.age}"/></td>
                            <td><c:out value="${developer.gender}"/></td>
                            <td><c:out value="${developer.salary}"/></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="block block-form">
                    <h4>Add developer</h4>
                    <div class="form-container">
                        <form action="${pageContext.request.contextPath}/skill-developers?${pageContext.request.getQueryString()}" method="POST">
                            <div class="form-group">
                                <label for="developerFirstName">First name</label>
                                <input type="text" class="form-control" name="developerFirstName" placeholder="Developer first name">
                            </div>
                            <div class="form-group">
                                <label for="developerLastName">Last name</label>
                                <input type="text" class="form-control" name="developerLastName" placeholder="Developer last name">
                            </div>
                            <div class="form-group">
                                <label for="developerAge">Age</label>
                                <input type="text" class="form-control" name="developerAge" placeholder="Developer age">
                            </div>
                            <fieldset class="form-group">
                                <legend>Gender</legend>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="radio" class="form-check-input" name="developerGender" value="MALE" checked>
                                        Male
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="radio" class="form-check-input" name="developerGender" value="FEMALE">
                                        Female
                                    </label>
                                </div>
                            </fieldset>
                            <div class="form-group">
                                <label for="developerSalary">Salary</label>
                                <input type="text" class="form-control" name="developerSalary" placeholder="Developer salary">
                            </div>
                            <button type="submit" class="btn btn-primary">Execute</button>
                        </form>
                    </div>
                </div>
    </div>
</div>
</body>
</html>