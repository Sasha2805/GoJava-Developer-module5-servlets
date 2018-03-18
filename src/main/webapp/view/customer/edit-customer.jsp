<%@ page import="com.company.model.entities.Customer" %>
<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <title>Edit customer</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
        integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>

<body>
<div class="wrapper">
    <div class="container">
        <h4>Edit customer</h4>
        <div class="form-container">
            <form action="${pageContext.request.contextPath}/edit-customer" method="POST">
                <div class="form-group">
                    <label for="customerId">Id</label>
                    <input type="text" class="form-control" name="customerId" placeholder="Customer id"
                        value="${customer.id}"/>
                </div>
                <div class="form-group">
                    <label for="customerFirstName">First name</label>
                    <input type="text" class="form-control" name="customerFirstName" placeholder="Customer first name"
                        value="${customer.firstName}"/>
                </div>
                <div class="form-group">
                    <label for="customerLastName">Last name</label>
                    <input type="text" class="form-control" name="customerLastName" placeholder="Customer last name"
                        value="${customer.lastName}"/>
                </div>
                <div class="form-group">
                    <label for="customerInfo">Customer info</label>
                    <textarea class="form-control" name="customerInfo" rows="3">${customer.info}</textarea>
                </div>
                <button type="submit" class="btn btn-primary">Execute</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>