<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.company.model.entities.Customer" %>

<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <title>Project customers</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
    <script src="${pageContext.request.contextPath}/js/view.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
        integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>

<body>
<div class="wrapper">
    <div class="container">
        <div class="block block-table">
            <h4>List of all customers</h4>
            <div class="table-container">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">First name</th>
                            <th scope="col">Last name</th>
                            <th scope="col">Info</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="customer" items="${customers}">
                        <tr>
                            <td><c:out value="${customer.id}"/></td>
                            <td><c:out value="${customer.firstName}"/></td>
                            <td><c:out value="${customer.lastName}"/></td>
                            <td><c:out value="${customer.info}"/></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="block block-form">
            <div class="block-action" onclick="openBlock('add-customer')">
                <span class="action-description">Add customer</span>
            </div>

            <div class="form-container" id="add-customer" style="display:none; float: left">
                <div class="form">
                    <form action="${pageContext.request.contextPath}/project-customers?${pageContext.request.getQueryString()}" method="POST">
                        <div class="form-group">
                            <label for="customerFirstName">First name</label>
                            <input type="text" class="form-control" name="customerFirstName" placeholder="Customer first name">
                        </div>
                        <div class="form-group">
                            <label for="customerLastName">Last name</label>
                            <input type="text" class="form-control" name="customerLastName" placeholder="Customer last name">
                        </div>
                        <div class="form-group">
                            <label for="customerInfo">Customer info</label>
                            <textarea class="form-control" name="customerInfo" rows="3"></textarea>
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