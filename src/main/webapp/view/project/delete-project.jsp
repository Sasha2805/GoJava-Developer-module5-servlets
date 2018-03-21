<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <title>Delete project</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
        integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>

<body>
<div class="wrapper">
    <div class="container">
        <div class="block block-form">
            <h4>Delete project</h4>
            <div class="form-container">
                <form action="${pageContext.request.contextPath}/delete-project" method="POST">
                    <div class="form-group">
                        <label for="projectId">Id</label>
                        <input type="text" class="form-control" name="projectId" placeholder="Project id">
                    </div>
                    <button type="submit" class="btn btn-primary">Execute</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>