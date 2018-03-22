<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <title>Add project</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
        integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>

<body>
<div class="wrapper">
    <div class="container">
        <div class="block block-form">
            <h4>Add project</h4>
            <div class="form-container">
                <div class="form">
                    <form action="${pageContext.request.contextPath}/add-project" method="POST">
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