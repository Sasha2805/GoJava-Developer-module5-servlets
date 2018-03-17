<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <title>Delete company</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
        integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>

<body>
<div class="wrapper">
    <div class="container">
        <h4>Delete company</h4>
        <div class="form-container">
            <form action="${pageContext.request.contextPath}/delete-company" method="POST">
                <div class="form-group">
                    <label for="companyId">Id</label>
                    <input type="text" class="form-control" name="companyId" placeholder="Company id">
                </div>
                <button type="submit" class="btn btn-primary">Execute</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>