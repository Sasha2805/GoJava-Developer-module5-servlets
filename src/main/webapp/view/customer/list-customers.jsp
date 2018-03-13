<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.company.model.entities.Customer" %>

<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <title>All customers</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
        integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>

<body>
<div class="wrapper">
    <div class="container">
        <h4>List of all customers</h4>
        <div class="table-container">
            <table border="1">
                <tr>
                    <td>Id</td>
                    <td>First name</td>
                    <td>Last name</td>
                    <td>Info</td>
                </tr>
                <c:forEach var="customer" items="${customers}">
                <tr>
                    <td><c:out value="${customer.id}"/></td>
                    <td><c:out value="${customer.firstName}"/></td>
                    <td><c:out value="${customer.lastName}"/></td>
                    <td><c:out value="${customer.info}"/></td>
                </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>