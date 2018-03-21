<%@ page import="com.company.model.entities.Company" %>
<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <title>Edit company</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
        integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>

<body>
<div class="wrapper">
    <div class="container">
        <div class="block block-form">
            <h4>Edit company</h4>
            <div class="form-container">
                <form action="${pageContext.request.contextPath}/edit-company" method="POST">
                    <div class="form-group">
                        <label for="companyId">Id</label>
                        <input type="text" class="form-control" name="companyId" placeholder="Company id"
                            value="${company.id}"/>
                    </div>
                    <div class="form-group">
                        <label for="companyName">Company name</label>
                        <input type="text" class="form-control" name="companyName" placeholder="Company name"
                            value="${company.name}"/>
                    </div>
                    <div class="form-group">
                        <label for="companyInfo">Company info</label>
                        <textarea class="form-control" name="companyInfo" rows="3">${company.info}</textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Execute</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>