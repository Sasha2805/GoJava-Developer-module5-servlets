<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <title>Edit skill</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
        integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>

<body>
<div class="wrapper">
    <div class="container">
        <div class="block block-form">
            <h4>Edit skill</h4>
            <div class="form-container">
                <div class="form">
                    <form action="${pageContext.request.contextPath}/edit-skill" method="POST">
                        <div class="form-group">
                             <label for="skillId">Id</label>
                             <input type="text" class="form-control" name="skillId" placeholder="Skill id">
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